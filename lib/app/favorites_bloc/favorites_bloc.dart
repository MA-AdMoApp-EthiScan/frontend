import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/list_product.dart';
import 'package:ethiscan/domain/entities/app/favorite_sort.dart';
import 'package:ethiscan/domain/entities/firestore/sort_criteria.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoriteProductRepository _favoriteProductRepository;
  final ProductRepository _productRepository;
  late List<ListProduct> allFavorites;

  FavoritesBloc(this._favoriteProductRepository, this._productRepository)
      : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(load: () async {
        emit(const FavoritesState.loading());
        await getUserWithFavorites(emit);
      }, updateSort: (listProduct, favoriteSort) async {
        emit(const FavoritesState.loading());
        List<ListProduct> favorites = [];
        for (var product in allFavorites) {
          favorites.add(product);
        }

        // Filter by name if it's not null
        if (favoriteSort.name != null) {
          favorites = favorites
              .where((element) => element.name
                  .toLowerCase()
                  .contains(favoriteSort.name!.toLowerCase()))
              .toList();
        }

        // Filter by date range if isRange is true
        if (favoriteSort.isRange == true) {
          favorites = favorites
              .where((element) =>
                  element.scanDate.isAfter(favoriteSort.dateFrom!) &&
                  element.scanDate.isBefore(favoriteSort.dateTo!))
              .toList();
        } else if (favoriteSort.isRange == false) {
          favorites = favorites
              .where(
                  (element) => element.scanDate.isAfter(favoriteSort.dateFrom!))
              .toList();
        }

        switch (favoriteSort.sortCriteria.field) {
          case SortField.name:
            favorites.sort((a, b) {
              if (favoriteSort.sortCriteria.order == SortOrder.ascending) {
                return a.name.compareTo(b.name);
              } else {
                return b.name.compareTo(a.name);
              }
            });
            break;
          case SortField.scanDate:
            favorites.sort((a, b) {
              if (favoriteSort.sortCriteria.order == SortOrder.ascending) {
                return a.scanDate.compareTo(b.scanDate);
              } else {
                return b.scanDate.compareTo(a.scanDate);
              }
            });
            break;
        }

        emit(FavoritesState.loaded(favorites: favorites));
      });
    });
  }

  Future<void> getUserWithFavorites(Emitter<FavoritesState> emit) async {
    var either = await _favoriteProductRepository.getFavoriteProducts();
    await either.fold(
      (failure) async {
        emit(const FavoritesState.error());
      },
      (favoriteProducts) async {
        List<String> favoriteIds =
            favoriteProducts.map((f) => f.productId).toList();
        var favoritesEither =
            await _productRepository.getProductByIdList(favoriteIds);
        await favoritesEither.fold((failure) async {
          emit(const FavoritesState.error());
        }, (favorites) async {
          List<ListProduct> listProduct = favorites
              .map((e) => ListProduct(
                  id: e.id,
                  name: e.name,
                  scanDate: favoriteProducts
                      .firstWhere((element) => e.id == element.productId)
                      .addedAt))
              .toList();
          allFavorites = listProduct;
          emit(FavoritesState.loaded(favorites: listProduct));
        });
      },
    );
  }
}
