import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/metadata_type_repository.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'parameters_bloc.freezed.dart';
part 'parameters_event.dart';
part 'parameters_state.dart';

@injectable
class ParametersBloc extends Bloc<ParametersEvent, ParametersState> {
  final MetadataTypeRepository _metadataTypeRepository;
  final UserRepository _userRepository;
  List<MetadataType> allMetadataTypes = [];
  
  ParametersBloc(
      this._metadataTypeRepository,
      this._userRepository
      ) : super(const ParametersState.initial()) {
    on<ParametersEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ParametersState.loading());
          var metadataTypesEither = await _metadataTypeRepository.getMetadataTypes();
          await metadataTypesEither.when(
              left: (failure) async {
                emit(const ParametersState.error());
              },
              right: (m) async {
                allMetadataTypes.addAll(m);

                var either = await _userRepository.getUserFromId(FirebaseAuth.instance.currentUser!.uid);
                await either.when(
                  right: (user) async {
                    if (user.metadataTypeIds == null) {
                      emit(ParametersState.loaded(
                          allMetadataTypes: allMetadataTypes,
                          subscribedMetadataTypes: []
                      )
                      );
                    }
                    var metadataTypesEither = await _metadataTypeRepository.getByIdList(user.metadataTypeIds!);
                    await metadataTypesEither.when(
                        left: (failure) async {
                          emit(ParametersState.loaded(
                              allMetadataTypes: allMetadataTypes,
                              subscribedMetadataTypes: []
                          )
                          );
                        },
                        right: (metadataTypes) async {
                          emit(ParametersState.loaded(
                              allMetadataTypes: allMetadataTypes,
                              subscribedMetadataTypes: metadataTypes
                          )
                          );
                        }
                    );
                  },
                  left: (failure) async {
                    return [];
                  },
                );
              }
          );

        },
        subscribe: (String metadataTypeId) async {
          var either = await _userRepository.getUserFromId(FirebaseAuth.instance.currentUser!.uid);
          await either.when(
            right: (user) async {
              user.metadataTypeIds ??= [];
              user.metadataTypeIds!.add(metadataTypeId);
              await _userRepository.updateUser(user);
              var metadataTypesEither = await _metadataTypeRepository.getByIdList(user.metadataTypeIds!);
              await metadataTypesEither.when(
                  left: (failure) async {
                    emit(const ParametersState.error());
                  },
                  right: (metadataTypes) async {
                    emit(ParametersState.loaded(
                        allMetadataTypes: allMetadataTypes,
                        subscribedMetadataTypes: metadataTypes
                    )
                    );
                  }
              );
            },
            left: (failure) async {
              emit(const ParametersState.error());
            },
          );
        },
        unsubscribe: (String metadataTypeId) async {
          var either = await _userRepository.getUserFromId(FirebaseAuth.instance.currentUser!.uid);
          await either.when(
            right: (user) async {
              user.metadataTypeIds?.remove(metadataTypeId);
              await _userRepository.updateUser(user);
              var metadataTypesEither = await _metadataTypeRepository.getByIdList(user.metadataTypeIds!);
              await metadataTypesEither.when(
                  left: (failure) async {
                    emit(const ParametersState.error());
                  },
                  right: (metadataTypes) async {
                    emit(ParametersState.loaded(
                        allMetadataTypes: allMetadataTypes,
                        subscribedMetadataTypes: metadataTypes
                    )
                    );
                  }
              );
            },
            left: (failure) async {
              emit(const ParametersState.error());
            },
          );
        },
      );
    });
  }
}