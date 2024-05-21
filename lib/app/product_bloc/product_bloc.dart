import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:ethiscan/data/repositories/metadata_type_repository.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  final FavoriteProductRepository _favoriteProductRepository;
  final MetadataRepository _metadataRepository;
  final MetadataTypeRepository _metadataTypeRepository;

  ProductBloc(this._productRepository, this._favoriteProductRepository, this._metadataRepository, this._metadataTypeRepository) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id) async {
          emit(const ProductState.loading());
          final productEither = await _loadProduct(id);
          await productEither.fold(
            (failure) async => emit(ProductState.error(error: failure)),
            (product) async {
              final metadataEither = await _loadProductMetadata(product.productMetadataIds!);
              await metadataEither.fold(
                (failure) async => emit(ProductState.error(error: failure)),
                (metadata) async {
                  final isInFavoriteEither = await _isInFavorite(product.id);
                  await isInFavoriteEither.fold(
                    (failure) async => emit(ProductState.error(error: failure)),
                    (isInFavorite) async => emit(ProductState.loaded(product: product, isInFavorite: isInFavorite, metadata: metadata)),
                  );
                },
              );
            },
          );
        },
        addFavorite: (barcodeId) async {
          final addFavEither = await _addFavorite(
            FavoriteProduct(
              productId: barcodeId,
              addedAt: DateTime.now(),
            ),
          );
          await addFavEither.fold(
            (failure) async => emit(ProductState.error(error: failure)),
            // ignore: unnecessary_set_literal
            (_) async {
              final productEither = await _loadProduct(barcodeId);
              await productEither.fold(
                (failure) async => emit(ProductState.error(error: failure)),
                (product) async {
                  final metadataEither = await _loadProductMetadata(product.productMetadataIds!);
                  await metadataEither.fold(
                    (failure) async => emit(ProductState.error(error: failure)),
                    (metadata) async => emit(ProductState.loaded(product: product, isInFavorite: true, metadata: metadata)),
                  );
                },
              );
            },
          );

        },
        removeFavorite: (barcodeId) async {
          final removeFavEither = await _removeFromFavorite(barcodeId);
          await removeFavEither.fold(
            (failure) async => emit(ProductState.error(error: failure)),
            // ignore: unnecessary_set_literal
            (_) async {
              final productEither = await _loadProduct(barcodeId);
              await productEither.fold(
                (failure) async => emit(ProductState.error(error: failure)),
                (product) async {
                  final metadataEither = await _loadProductMetadata(product.productMetadataIds!);
                  await metadataEither.fold(
                    (failure) async => emit(ProductState.error(error: failure)),
                    (metadata) async => emit(ProductState.loaded(product: product, isInFavorite: false, metadata: metadata)),
                  );
                },
              );
            },
          );
        }
      );
    });
  }

  Future<Either<APIError, Product>> _loadProduct(String id) async {
    return await _productRepository.getProductById(id);
  }

  Future<Either<APIError, List<MapEntry<MetadataType, ProductMetadata>>>>
      _loadProductMetadata(List<String> metadataIds) async {
    final productMetadataEither =
        await _metadataRepository.getProductMetadatasById(metadataIds);
    return productMetadataEither.fold(
      (failure) async => Left(failure),
      (productMetadataList) async {
        final metadataTypeIds =
            productMetadataList.map((meta) => meta.metadataTypeId).toList();
        final metadataTypeEither =
            await _metadataTypeRepository.getByIdList(metadataTypeIds);
        return metadataTypeEither.fold(
          (failure) async => Left(failure),
          (metadataTypes) async {
            final mergedMetadata = productMetadataList.map((meta) {
              final metadataType = metadataTypes
                  .firstWhere((type) => type.id == meta.metadataTypeId);
              return MapEntry(metadataType, meta);
            }).toList();
            return Right(mergedMetadata);
          },
        );
      },
    );
  }


  Future<Either<APIError,bool>> _isInFavorite(String id) async {
    return await _favoriteProductRepository.productIsInFavorite(id);
  }

  Future<Either<APIError,void>> _addFavorite(FavoriteProduct favorite) async {
    return await _favoriteProductRepository.addFavoriteProduct(favorite);
  }

  Future<Either<APIError,void>> _removeFromFavorite(String barcodeId) async {
    return await _favoriteProductRepository.removeFavoriteProduct(barcodeId);
  }
}
