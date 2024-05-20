part of 'parameters_bloc.dart';

@freezed
abstract class ParametersState with _$ParametersState {
  const factory ParametersState.initial() = _ParametersInitial;

  const factory ParametersState.loading() = _ParametersLoading;

  const factory ParametersState.loaded({
    required List<MetadataType> allMetadataTypes,
    required List<MetadataType> subscribedMetadataTypes,
  }) = _ParametersLoaded;

  const factory ParametersState.error() = _ParametersError;
}
