import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesState.initial());

  @override
  Stream<FavoritesState> mapEventToState(
    FavoritesEvent event,
  ) async* {
    yield* event.map(
      load: (e) async* {
        yield const FavoritesState.loading();
        // final failureOrSurveys = await _surveysRepository.getFavorites();
        // yield failureOrSurveys.fold(
        //   (failure) => FavoritesState.error(),
        //   (surveys) => FavoritesState.loaded(surveys: surveys),
        // );
      },
    );
  }
}