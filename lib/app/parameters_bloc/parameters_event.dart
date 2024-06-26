part of 'parameters_bloc.dart';

@freezed
abstract class ParametersEvent with _$ParametersEvent {
  const factory ParametersEvent.load() = _ParametersLoad;
  const factory ParametersEvent.subscribe(String metadataTypeId) = _ParametersSubscribe;
  const factory ParametersEvent.unsubscribe(String metadataTypeId) = _ParametersUnsubscribe;
  const factory ParametersEvent.updateName(String newName) = _ParametersUpdateName;
  const factory ParametersEvent.updateEmail(String newEmail) = _ParametersUpdateEmail;
}
