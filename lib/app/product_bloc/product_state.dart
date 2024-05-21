part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _ProductInitial;

  const factory ProductState.loading() = _ProductLoading;

  const factory ProductState.loaded({
    required Product product, 
    required bool isInFavorite,
    required List<MapEntry<MetadataType, 
    ProductMetadata>> metadata,
    required List<Certification> certifications,
    }) = _ProductLoaded;

  const factory ProductState.error({
    required APIError error,
  }) = _ProductError;
}
