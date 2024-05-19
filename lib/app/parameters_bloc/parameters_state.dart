part of 'parameters_bloc.dart';

@freezed
abstract class ParametersState with _$ParametersState {
  const factory ParametersState.initial() = _ParametersInitial;

  const factory ParametersState.loading() = _ParametersLoading;

  const factory ParametersState.loaded({
    required UserPreferences userPreferences,
  }) = _ParametersLoaded;

  const factory ParametersState.error() = _ParametersError;
}
