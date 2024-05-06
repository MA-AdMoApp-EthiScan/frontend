import 'package:bloc/bloc.dart';
import 'package:ethiscan/domain/entities/favorite_sort.dart';
import 'package:ethiscan/domain/entities/list_product.dart';
import 'package:ethiscan/utils/date_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const FavoritesState.initial()) {
    on<FavoritesEvent>((event, emit) async {
      await event.when(
        load: (favoriteCriteria) async {
          emit(const FavoritesState.loading());
          await Future.delayed(const Duration(seconds: 3));
          List<ListProduct> products = [
            ListProduct(
              id: "1",
              name: 'Product 1',
              scanDate: DateTime.now(),
            ),
            ListProduct(
              id: "2",
              name: 'Product 2',
              scanDate: DateHelpers.firstDayOfWeek(DateTime.now()),
            ),
          ];
          emit(FavoritesState.loaded(favorites: products, favoriteCriteria: favoriteCriteria));
        },
        updateCriteria: (favoriteCriteria) async {
          emit(const FavoritesState.loading());

          List<ListProduct> products = [
            ListProduct(
              id: "1",
              name: 'Product 1',
              scanDate: DateTime.now(),
            ),
            ListProduct(
              id: "2",
              name: 'Product 2',
              scanDate: DateHelpers.firstDayOfWeek(DateTime.now()),
            ),
          ];
          emit(FavoritesState.loaded(favorites: products, favoriteCriteria: favoriteCriteria));
        }
      );
    });
  }
}
