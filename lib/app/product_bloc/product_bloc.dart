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
          try {
            final product = await _getProduct(id);
            //final metadatas = await _getMetadata(product.id);
            final isInFavorite = await _isInFavorite(product.id);

            emit(ProductState.loaded(
                product: product , isInFavorite: isInFavorite/*, metadatas: metadatas*/));
          } catch (e) {
            emit(ProductState.error(error: e as APIError));
          }

        },
        addFavorite: (barcodeId) async {
          await _addFavorite(
            FavoriteProduct(
              productId: barcodeId,
              addedAt: DateTime.now(),
            ),
          );
          final product = await _getProduct(barcodeId);
          emit(ProductState.loaded(product: product, isInFavorite: true));
        },
        removeFavorite: (barcodeId) async {
          await _removeFromFavorite(barcodeId);
          final product = await _getProduct(barcodeId);
          emit(ProductState.loaded(product: product, isInFavorite: false));
        }
      );
    });
  }

  Future<Product> _getProduct(String id) async {
    final either = await _productRepository.getProductById(id);
    return either.fold(
      (failure) => throw failure,
      (product) => product,
    );
  }

  Future<bool> _isInFavorite(String id) async {
    final either = await _favoriteProductRepository.productIsInFavorite(id);
    return either.fold(
      (failure) => throw failure,
      (boolVal) => boolVal,
    );
  }

  Future<void> _addFavorite(FavoriteProduct favorite) async {
    final either = await _favoriteProductRepository.addFavoriteProduct(favorite);
    return either.fold(
      (failure) => throw failure,
      (_) => null,
    );
  }

  Future<void> _removeFromFavorite(String barcodeId) async {
    final either = await _favoriteProductRepository.removeFavoriteProduct(barcodeId);
    return either.fold(
      (failure) => throw failure,
      (_) => null,
    );
  }
  // Future<List<ProductMetadata>> _getMetadata(String productId) async {
  //   final either = await _metadataRepository.getMetadatasByProductId(productId);
  //   return either.fold(
  //     (failure) => throw failure,
  //     (metadata) => metadata,
  //   );
  // }
}
