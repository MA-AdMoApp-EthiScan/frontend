import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/domain/entities/favorite_sort.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final UserRepository _userRepository;
  FavoritesBloc(
      this._userRepository
      ) : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(
        load: (user) async {
          emit(const FavoritesState.loading());
          await getUserWithFavorites(user, emit);
        },
        updateSort: (user, favoriteSort) async {
          emit(const FavoritesState.loading());
          await getUserWithFavorites(user, emit);
        }
      );
    });
  }

  Future<void> getUserWithFavorites(EthiscanUser user, Emitter<FavoritesState> emit) async {
    var either = await _userRepository.getUserFromId(user.firebaseUser!.uid);
    await either.when(
      left: (failure) async {
        var newEither = await _userRepository.addUser(user);
        await newEither.when(
          left: (failure) async {
            emit(const FavoritesState.error());
          },
          right: (user) async {
            emit(FavoritesState.loaded(favorites: user.favorites));
          },
        );
        emit(const FavoritesState.error());
      },
      right: (user) async {
        emit(FavoritesState.loaded(favorites: user.favorites));
      },
    );
  }
}
