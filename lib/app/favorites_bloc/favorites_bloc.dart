import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/domain/entities/favorite_product.dart';
import 'package:ethiscan/domain/entities/favorite_sort.dart';
import 'package:ethiscan/domain/entities/list_product.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:ethiscan/domain/entities/sort_criteria.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final UserRepository _userRepository;
  final FavoriteProductRepository _favoriteProductRepository;
  FavoritesBloc(this._userRepository, this._favoriteProductRepository)
      : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(load: (user) async {
        emit(const FavoritesState.loading());
        await getUserWithFavorites(user, emit);
      }, updateSort: (user, favoriteSort) async {
        emit(const FavoritesState.loading());

        var either = await _favoriteProductRepository.getFavoriteProducts();
        await either.when(
          left: (failure) async {
            emit(const FavoritesState.error());
          },
          right: (favoriteProducts) async {
            emit(FavoritesState.loaded(favorites: favoriteProducts));
          },
        );

        List<Product> favorites = user.favoriteProducts;

        // Filter by name if it's not null
        if (favoriteSort.name != null) {
          favorites = favorites
              .where((element) => element.name
                  .toLowerCase()
                  .contains(favoriteSort.name!.toLowerCase()))
              .toList();
        }

        // Filter by date range if isRange is true
        // if (favoriteSort.isRange == true) {
        //   favorites = favorites
        //       .where((element) =>
        //             element.scanDate.isAfter(favoriteSort.dateFrom!) &&
        //             element.scanDate.isBefore(favoriteSort.dateTo!))
        //       .toList();
        // }

        // Sort the list based on the sortCriteria
        favorites.sort((a, b) {
          if (favoriteSort.sortCriteria.order == SortOrder.ascending) {
            return a.name.compareTo(b.name);
          } else {
            return b.name.compareTo(a.name);
          }
        });

        emit(FavoritesState.loaded(favorites: favorites));
      });
    });
  }

  Future<void> getUserWithFavorites(
      EthiscanUser user, Emitter<FavoritesState> emit) async {
    var either = await _userRepository.getUserFromId(user.uid);
    await either.when(
      left: (failure) async {
        var newEither = await _userRepository.addUser(user);
        await newEither.when(
          left: (failure) async {
            emit(const FavoritesState.error());
          },
          right: (user) async {
            emit(FavoritesState.loaded(favorites: user.favoriteProducts));
          },
        );
        emit(const FavoritesState.error());
      },
      right: (user) async {
        emit(FavoritesState.loaded(favorites: user.favoriteProducts));
      },
    );
  }
}
