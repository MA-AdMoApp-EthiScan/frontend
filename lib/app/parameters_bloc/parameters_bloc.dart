import 'package:bloc/bloc.dart';
import 'package:ethiscan/domain/entities/user_preferences.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'parameters_bloc.freezed.dart';
part 'parameters_event.dart';
part 'parameters_state.dart';

@injectable
class ParametersBloc extends Bloc<ParametersEvent, ParametersState> {
  ParametersBloc() : super(const ParametersState.initial()) {
    on<ParametersEvent>((event, emit) async {
      await event.when(
        load: () async {
          emit(const ParametersState.loading());
          // TODO get user preferences from the repository
          emit(ParametersState.loaded(userPreferences: UserPreferences(
            metadataSubscriptions: [],
          )));
        },
      );
    });
  }
}