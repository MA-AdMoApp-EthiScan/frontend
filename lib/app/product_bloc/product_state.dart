part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _ProductInitial;

  const factory ProductState.loading() = _ProductLoading;

  const factory ProductState.loaded(
          {required Product product,
          required List<MapEntry<MetadataType, ProductMetadata>> metadata}) =
      _Loaded;

  const factory ProductState.error({
    required APIError error,
  }) = _ProductError;
}
