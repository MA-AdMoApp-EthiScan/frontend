import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show injectable;

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  final FavoriteProductRepository _favoriteProductRepository;

  ProductBloc(this._productRepository, this._favoriteProductRepository) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id) async {
          emit(const ProductState.loading());
          var either = await _productRepository.getProductById(id);
          await either.when(
            left: (failure) async {
              emit(ProductState.error(error: failure));
            },
            right: (product) async {
              var either2 = await _favoriteProductRepository.productIsInFavorite(product.id);
              bool isInFavorite = false;
              either2.when(
                left: (failure)  {
                  isInFavorite = false;
                },
                right: (res)  {
                  isInFavorite = res;
                },
              );
              emit(ProductState.loaded(product: product, isInFavorite: isInFavorite));
            },
          );
        },
        addFavorite: (barcodeId) async {
          var either = await _favoriteProductRepository.addFavoriteProduct(
            FavoriteProduct(
              productId: barcodeId,
              addedAt: DateTime.now(),
            ),
          );
          await either.when(
            left: (failure) async {
              emit(ProductState.error(error: failure));
            }, right: (void value) {  },
          );

          var eitherNew = await _productRepository.getProductById(barcodeId);
          await eitherNew.when(
            left: (failure) async {
              emit(ProductState.error(error: failure));
            },
            right: (product) async {
              emit(ProductState.loaded(product: product, isInFavorite: true));
            },
          );
        },
        removeFavorite: (barcodeId) async {
          var either = await _favoriteProductRepository.removeFavoriteProduct(
            barcodeId
          );
          await either.when(
            left: (failure) async {
              emit(ProductState.error(error: failure));
            }, right: (void value) {  },
          );

          var eitherNew = await _productRepository.getProductById(barcodeId);
          await eitherNew.when(
            left: (failure) async {
              emit(ProductState.error(error: failure));
            },
            right: (product) async {
              emit(ProductState.loaded(product: product, isInFavorite: false));
            },
          );
        }
      );
    });
  }
}
