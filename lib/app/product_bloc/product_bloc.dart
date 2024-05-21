import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:ethiscan/data/repositories/metadata_type_repository.dart';
import 'package:ethiscan/data/repositories/favorite_product_repository.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/data/repositories/user_repository.dart';
import 'package:ethiscan/data/repositories/certification_repository.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/favorite_product.dart';
import 'package:ethiscan/domain/entities/firestore/product.dart';
import 'package:ethiscan/domain/entities/firestore/product_metadata.dart';
import 'package:ethiscan/domain/entities/firestore/metadata_type.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
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
  final UserRepository _userRepository;
  final CertificationRepository _certificationRepository;
  //String? _userId;
  Product? _product;
  List<MapEntry<MetadataType, ProductMetadata>>? _metadata;
  List<Certification>? _certifications;

  ProductBloc(
    this._productRepository,
    this._favoriteProductRepository,
    this._metadataRepository,
    this._metadataTypeRepository,
    this._userRepository,
    this._certificationRepository,
  ) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id, userId) async {
          emit(const ProductState.loading());
          final userEither = await _userRepository.getUserFromId(userId);
          final productEither = await _loadProduct(id);

          await productEither.fold(
            (failure) async => emit(ProductState.error(error: failure)),
            (product) async {
              await userEither.fold(
                (failure) async => emit(ProductState.error(error: failure)),
                (user) async {
                  final metadataEither = await _loadFilteredProductMetadata(
                    product.productMetadataIds ?? [],
                    user.metadataTypeIds ?? [],
                  );

                  final certificationsEither = await _loadCertifications(
                    product.certificationIds ?? [],
                  );

                  await metadataEither.fold(
                    (failure) async => emit(ProductState.error(error: failure)),
                    (metadata) async {
                      await certificationsEither.fold(
                        (failure) async =>
                            emit(ProductState.error(error: failure)),
                        (certifications) async {
                          final isInFavoriteEither = await _isInFavorite(product.id);
                          await isInFavoriteEither.fold(
                            (failure) async => emit(ProductState.error(error: failure)),
                            (isInFavorite) async {
                              _product = product;
                              _metadata = metadata;
                              _certifications = certifications;

                              emit(ProductState.loaded(
                                product: product, 
                                isInFavorite: isInFavorite, 
                                metadata: metadata, 
                                certifications: certifications
                              ));
                            },
                          );
                        },
                      );
                    },
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
            (_) async => emit(ProductState.loaded(
                                  product: _product!, 
                                  isInFavorite: true, 
                                  metadata: _metadata!, 
                                  certifications: _certifications!
                                  )),
          );

        },
        removeFavorite: (barcodeId) async {
          final removeFavEither = await _removeFromFavorite(barcodeId);
          await removeFavEither.fold(
            (failure) async => emit(ProductState.error(error: failure)),
            // ignore: unnecessary_set_literal
            (_) async => emit(ProductState.loaded(
                                  product: _product!, 
                                  isInFavorite: false, 
                                  metadata: _metadata!, 
                                  certifications: _certifications!
                                  )),
          );
        }
      );
    });
  }

 Future<Either<APIError, Product>> _loadProduct(String id) async {
    return await _productRepository.getProductById(id);
  }

  Future<Either<APIError, List<MapEntry<MetadataType, ProductMetadata>>>>
      _loadFilteredProductMetadata(
          List<String> metadataIds, List<String> userMetadataTypeIds) async {
    if (metadataIds.isEmpty || userMetadataTypeIds.isEmpty) {
      return const Right([]);
    }

    final metadataEither =
        await _metadataRepository.getProductMetadatasById(metadataIds);
    return metadataEither.fold(
      (failure) async => Left(failure),
      (metadataList) async {
        final filteredMetadataList = metadataList
            .where((metadata) =>
                userMetadataTypeIds.contains(metadata.metadataTypeId))
            .toList();
        if (filteredMetadataList.isEmpty) {
          return const Right([]);
        }
        final metadataTypeIds =
            filteredMetadataList.map((meta) => meta.metadataTypeId).toList();
        final metadataTypeEither =
            await _metadataTypeRepository.getByIdList(metadataTypeIds);
        return metadataTypeEither.fold(
          (failure) async => Left(failure),
          (metadataTypes) async {
            final mergedMetadata = filteredMetadataList.map((meta) {
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

  Future<Either<APIError, List<Certification>>> _loadCertifications(
      List<String> certificationIds) async {
    if (certificationIds.isEmpty) {
      return const Right([]);
    }
    return await _certificationRepository
        .getCertificationsByIds(certificationIds);
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
