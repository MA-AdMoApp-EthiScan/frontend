import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
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
  
  ParametersBloc(
      this._metadataTypeRepository,
      this._userRepository
      ) : super(const ParametersState.initial()) {
    on<ParametersEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ParametersState.loading());
          // TODO get user preferences from the repository
          List<MetadataType> metadataTypes = await getMetadata();
          emit(ParametersState.loaded(metadataTypes: metadataTypes));
        },
      );
    });
  }

  Future<List<MetadataType>> getMetadata() async {
    var either = await _userRepository.getUserFromId(FirebaseAuth.instance.currentUser!.uid);
    return await either.when(
      right: (user) async {
        if (user.metadataTypeIds == null) {
          return [];
        }
        var metadataTypesEither = await _metadataTypeRepository.getByIdList(user.metadataTypeIds!);
        await metadataTypesEither.when(
            left: (failure) async {
              return [];
            },
            right: (metadataTypes) async {
              return metadataTypes;
            }
        );
      },
      left: (failure) async {
        var newEither = await _userRepository.addUser(user);
        await newEither.when(
          left: (failure) async {
            return [];
          },
          right: (user) async {
            if (user.metadataTypeIds == null) {
              return [];
            }
            var metadataTypesEither = await _metadataTypeRepository.getByIdList(user.metadataTypeIds!);
            await metadataTypesEither.when(
                left: (failure) async {
                  return [];
                },
                right: (metadataTypes) async {
                  List<ListProduct> listProduct = metadataTypes.map((e) =>
                      ListProduct(
                          id: e.id,
                          name: e.name,
                          scanDate: user.metadataTypeProducts!.firstWhere((element) => e.id == element.productId).addedAt
                      )
                  ).toList();
                  return listProduct;
                }
            );
          },
        );
      },
    );
  }
}