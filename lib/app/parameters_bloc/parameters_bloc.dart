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
  List<String> currentMetadataTypeIds = [];

  ParametersBloc(this._metadataTypeRepository, this._userRepository)
      : super(const ParametersState.initial()) {
    on<ParametersEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ParametersState.loading());
          var metadataTypesEither =
              await _metadataTypeRepository.getMetadataTypes();
          await metadataTypesEither.fold((failure) async {
            emit(const ParametersState.error());
          }, (metadataTypes) async {
            allMetadataTypes.addAll(metadataTypes);

            var either = await _userRepository
                .getUserFromId(FirebaseAuth.instance.currentUser!.uid);
            await either.fold(
              (failure) async {
                emit(const ParametersState.error());
              },
              (user) {
                currentMetadataTypeIds = user.metadataTypeIds ?? [];
                emit(ParametersState.loaded(
                  allMetadataTypes: allMetadataTypes,
                  subscribedMetadataTypeIds: user.metadataTypeIds ?? [],
                ));
              },
            );
          });
        },
        subscribe: (String metadataTypeId) async {
          emit(const ParametersState.loading());
          var either = await _userRepository
              .getUserFromId(FirebaseAuth.instance.currentUser!.uid);
          either.fold(
            (failure) {
              emit(const ParametersState.error());
            },
            (user) async {
              user.metadataTypeIds ??= [];
              currentMetadataTypeIds = user.metadataTypeIds ?? [];
              user.metadataTypeIds!.add(metadataTypeId);
              await _userRepository.updateUser(user);

              emit(ParametersState.loaded(
                  allMetadataTypes: allMetadataTypes,
                  subscribedMetadataTypeIds: user.metadataTypeIds ?? []));
            },
          );
        },
        unsubscribe: (String metadataTypeId) async {
          emit(const ParametersState.loading());
          var either = await _userRepository
              .getUserFromId(FirebaseAuth.instance.currentUser!.uid);
          either.fold(
            (failure) {
              emit(const ParametersState.error());
            },
            (user) async {
              currentMetadataTypeIds = user.metadataTypeIds ?? [];
              user.metadataTypeIds?.remove(metadataTypeId);
              await _userRepository.updateUser(user);

              emit(ParametersState.loaded(
                  allMetadataTypes: allMetadataTypes,
                  subscribedMetadataTypeIds: user.metadataTypeIds ?? []));
            },
          );
        },
        updateName: (String newName) {
          emit(const ParametersState.loading());
          var currentUser = FirebaseAuth.instance.currentUser;
          currentUser!.updateDisplayName(newName);
          emit(ParametersState.loaded(
              allMetadataTypes: allMetadataTypes,
              subscribedMetadataTypeIds: currentMetadataTypeIds));
        },
        updateEmail: (String newEmail) {
          emit(const ParametersState.loading());
          var currentUser = FirebaseAuth.instance.currentUser;
          currentUser!.verifyBeforeUpdateEmail(newEmail);
          emit(ParametersState.loaded(
              allMetadataTypes: allMetadataTypes,
              subscribedMetadataTypeIds: currentMetadataTypeIds));
        },
      );
    });
  }
}
