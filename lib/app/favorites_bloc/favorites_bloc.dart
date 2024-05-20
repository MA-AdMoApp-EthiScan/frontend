import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:ethiscan/domain/entities/app/list_product.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';
import 'package:ethiscan/domain/entities/app/favorite_sort.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/sort_criteria.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final UserRepository _userRepository;
  final ProductRepository _productRepository;
  
  FavoritesBloc(
      this._userRepository,
      this._productRepository
      ) : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(load: (user) async {
        emit(const FavoritesState.loading());
        await getUserWithFavorites(user, emit);
      }, updateSort: (user, favoriteSort) async {
        emit(const FavoritesState.loading());

        List<Product> favorites = user.favorites;

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

        List<ListProduct> listProduct = favorites.map((e) =>
          ListProduct(
            id: e.id,
            name: e.name,
            scanDate: user.favoriteProducts!.firstWhere((element) => e.id == element.productId).addedAt
          )
        ).toList();
        emit(FavoritesState.loaded(favorites: listProduct));
      });
    });
  }

  Future<void> getUserWithFavorites(
      EthiscanUser user, Emitter<FavoritesState> emit) async {
    var either = await _userRepository.getUserFromId(user.firebaseUser!.uid);
    await either.when(
      right: (user) async {
        if (user.favoriteProducts == null) {
          emit(const FavoritesState.loaded(favorites: []));
          return;
        }
        List<String> favoriteIds = user.favoriteProducts!.map((f) => f.productId).toList();
        var favoritesEither = await _productRepository.getProductByIdList(favoriteIds);
        await favoritesEither.when(
          left: (failure) async {
            emit(const FavoritesState.error());
          },
          right: (favorites) async {
            List<ListProduct> listProduct = favorites.map((e) =>
              ListProduct(
                id: e.id,
                name: e.name,
                scanDate: user.favoriteProducts!.firstWhere((element) => e.id == element.productId).addedAt
              )
            ).toList();
            emit(FavoritesState.loaded(favorites: listProduct));
          }
        );
      },
      left: (failure) async {
        var newEither = await _userRepository.addUser(user);
        await newEither.when(
          left: (failure) async {
            emit(const FavoritesState.error());
          },
          right: (user) async {
            if (user.favoriteProducts == null) {
              emit(const FavoritesState.loaded(favorites: []));
              return;
            }
            List<String> favoriteIds = user.favoriteProducts!.map((f) => f.productId).toList();
            var favoritesEither = await _productRepository.getProductByIdList(favoriteIds);
            await favoritesEither.when(
                left: (failure) async {
                  emit(const FavoritesState.error());
                },
                right: (favorites) async {
                  List<ListProduct> listProduct = favorites.map((e) =>
                      ListProduct(
                          id: e.id,
                          name: e.name,
                          scanDate: user.favoriteProducts!.firstWhere((element) => e.id == element.productId).addedAt
                      )
                  ).toList();
                  emit(FavoritesState.loaded(favorites: listProduct));
                }
            );
          },
        );
      },
    );
  }
}
