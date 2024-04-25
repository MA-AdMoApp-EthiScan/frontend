import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesState.initial()) {

    on<FavoritesEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const FavoritesState.loading());
          await Future.delayed(const Duration(seconds: 3));
          emit(const FavoritesState.loaded(favorites: ['Favorite 1', 'Favorite 2']));
        },
      );
    });
  }
}