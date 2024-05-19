part of 'parameters_bloc.dart';

@freezed
abstract class ParametersEvent with _$ParametersEvent {
  const factory ParametersEvent.load() = _ParametersLoad;
}
