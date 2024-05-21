part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.load(String id, String userId) = _ProductLoad;
  const factory ProductEvent.addFavorite(String barcodeId) = _ProductAddFavorite;
  const factory ProductEvent.removeFavorite(String barcodeId) = _ProductRemoveFavorite;
}
