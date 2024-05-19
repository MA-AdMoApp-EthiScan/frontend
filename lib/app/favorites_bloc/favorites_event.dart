part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.load(EthiscanUser user) = _FavoritesLoad;
  const factory FavoritesEvent.updateSort(EthiscanUser user, FavoriteSort favoriteSort) = _FavoritesUpdateSort;
}
