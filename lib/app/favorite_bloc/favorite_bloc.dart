import 'package:bloc/bloc.dart';
import 'package:ethiscan/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show injectable;

part 'favorite_bloc.freezed.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteState.initial()) {
    on<FavoriteEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const FavoriteState.loading());
          await Future.delayed(const Duration(seconds: 3));
          // emit(const FavoriteState.loaded(favorite: null);
        },
      );
    });
  }
}