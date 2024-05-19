part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _FavoritesInitial;

  const factory FavoritesState.loading() = _FavoritesLoading;

  const factory FavoritesState.loaded({
    required List<Product> favorites,
  }) = _FavoritesLoaded;

  const factory FavoritesState.error() = _FavoritesError;
}
