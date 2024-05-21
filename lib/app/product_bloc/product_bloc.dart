import 'package:bloc/bloc.dart';
import 'package:ethiscan/data/repositories/metadata_repository.dart';
import 'package:ethiscan/data/repositories/metadata_type_repository.dart';
import 'package:ethiscan/data/repositories/product_repository.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
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
  final MetadataRepository _metadataRepository;
  final MetadataTypeRepository _metadataTypeRepository;

  ProductBloc(this._productRepository, this._metadataRepository,
      this._metadataTypeRepository)
      : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.when(
        load: (id) async {
          emit(const ProductState.loading());
          final either = await _productRepository.getProductById(id);
          await either.fold(
            (failure) async {
              emit(ProductState.error(error: failure));
            },
            (product) async {
              // Get metadata
              final metadataEither = await _metadataRepository
                  .getMetadatasByProductId(product.productMetadataIds!);
              await metadataEither.fold(
                (failure) async {
                  emit(ProductState.error(error: failure));
                },
                (metadataList) async {
                  // Get metadata types
                  final metadataTypeIds =
                      metadataList.map((meta) => meta.metadataTypeId).toList();
                  final metadataTypeEither = await _metadataTypeRepository
                      .getByIdList(metadataTypeIds);
                  await metadataTypeEither.fold(
                    (failure) async {
                      emit(ProductState.error(error: failure));
                    },
                    (metadataTypes) async {
                      // Merge metadata and metadata types
                      final mergedMetadata = metadataList.map((meta) {
                        final metadataType = metadataTypes.firstWhere(
                            (type) => type.id == meta.metadataTypeId);
                        return MapEntry(metadataType, meta);
                      }).toList();
                      emit(ProductState.loaded(
                          product: product, metadata: mergedMetadata));
                    },
                  );
                },
              );
            },
          );
        },
      );
    });
  }
}
