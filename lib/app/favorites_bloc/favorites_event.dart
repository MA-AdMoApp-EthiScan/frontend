part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.load(FavoriteSort favoriteCriteria) = _FavoritesLoad;
  const factory FavoritesEvent.updateCriteria(FavoriteSort favoriteCriteria) = _FavoritesUpdateCriteria;
}
