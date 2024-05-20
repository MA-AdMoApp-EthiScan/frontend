// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParametersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String metadataTypeId) subscribe,
    required TResult Function(String metadataTypeId) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String metadataTypeId)? subscribe,
    TResult? Function(String metadataTypeId)? unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String metadataTypeId)? subscribe,
    TResult Function(String metadataTypeId)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersLoad value) load,
    required TResult Function(_ParametersSubscribe value) subscribe,
    required TResult Function(_ParametersUnsubscribe value) unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersLoad value)? load,
    TResult? Function(_ParametersSubscribe value)? subscribe,
    TResult? Function(_ParametersUnsubscribe value)? unsubscribe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersLoad value)? load,
    TResult Function(_ParametersSubscribe value)? subscribe,
    TResult Function(_ParametersUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersEventCopyWith<$Res> {
  factory $ParametersEventCopyWith(
          ParametersEvent value, $Res Function(ParametersEvent) then) =
      _$ParametersEventCopyWithImpl<$Res, ParametersEvent>;
}

/// @nodoc
class _$ParametersEventCopyWithImpl<$Res, $Val extends ParametersEvent>
    implements $ParametersEventCopyWith<$Res> {
  _$ParametersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParametersLoadImplCopyWith<$Res> {
  factory _$$ParametersLoadImplCopyWith(_$ParametersLoadImpl value,
          $Res Function(_$ParametersLoadImpl) then) =
      __$$ParametersLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParametersLoadImplCopyWithImpl<$Res>
    extends _$ParametersEventCopyWithImpl<$Res, _$ParametersLoadImpl>
    implements _$$ParametersLoadImplCopyWith<$Res> {
  __$$ParametersLoadImplCopyWithImpl(
      _$ParametersLoadImpl _value, $Res Function(_$ParametersLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParametersLoadImpl implements _ParametersLoad {
  const _$ParametersLoadImpl();

  @override
  String toString() {
    return 'ParametersEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParametersLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String metadataTypeId) subscribe,
    required TResult Function(String metadataTypeId) unsubscribe,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String metadataTypeId)? subscribe,
    TResult? Function(String metadataTypeId)? unsubscribe,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String metadataTypeId)? subscribe,
    TResult Function(String metadataTypeId)? unsubscribe,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersLoad value) load,
    required TResult Function(_ParametersSubscribe value) subscribe,
    required TResult Function(_ParametersUnsubscribe value) unsubscribe,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersLoad value)? load,
    TResult? Function(_ParametersSubscribe value)? subscribe,
    TResult? Function(_ParametersUnsubscribe value)? unsubscribe,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersLoad value)? load,
    TResult Function(_ParametersSubscribe value)? subscribe,
    TResult Function(_ParametersUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _ParametersLoad implements ParametersEvent {
  const factory _ParametersLoad() = _$ParametersLoadImpl;
}

/// @nodoc
abstract class _$$ParametersSubscribeImplCopyWith<$Res> {
  factory _$$ParametersSubscribeImplCopyWith(_$ParametersSubscribeImpl value,
          $Res Function(_$ParametersSubscribeImpl) then) =
      __$$ParametersSubscribeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String metadataTypeId});
}

/// @nodoc
class __$$ParametersSubscribeImplCopyWithImpl<$Res>
    extends _$ParametersEventCopyWithImpl<$Res, _$ParametersSubscribeImpl>
    implements _$$ParametersSubscribeImplCopyWith<$Res> {
  __$$ParametersSubscribeImplCopyWithImpl(_$ParametersSubscribeImpl _value,
      $Res Function(_$ParametersSubscribeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadataTypeId = null,
  }) {
    return _then(_$ParametersSubscribeImpl(
      null == metadataTypeId
          ? _value.metadataTypeId
          : metadataTypeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParametersSubscribeImpl implements _ParametersSubscribe {
  const _$ParametersSubscribeImpl(this.metadataTypeId);

  @override
  final String metadataTypeId;

  @override
  String toString() {
    return 'ParametersEvent.subscribe(metadataTypeId: $metadataTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersSubscribeImpl &&
            (identical(other.metadataTypeId, metadataTypeId) ||
                other.metadataTypeId == metadataTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metadataTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersSubscribeImplCopyWith<_$ParametersSubscribeImpl> get copyWith =>
      __$$ParametersSubscribeImplCopyWithImpl<_$ParametersSubscribeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String metadataTypeId) subscribe,
    required TResult Function(String metadataTypeId) unsubscribe,
  }) {
    return subscribe(metadataTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String metadataTypeId)? subscribe,
    TResult? Function(String metadataTypeId)? unsubscribe,
  }) {
    return subscribe?.call(metadataTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String metadataTypeId)? subscribe,
    TResult Function(String metadataTypeId)? unsubscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(metadataTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersLoad value) load,
    required TResult Function(_ParametersSubscribe value) subscribe,
    required TResult Function(_ParametersUnsubscribe value) unsubscribe,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersLoad value)? load,
    TResult? Function(_ParametersSubscribe value)? subscribe,
    TResult? Function(_ParametersUnsubscribe value)? unsubscribe,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersLoad value)? load,
    TResult Function(_ParametersSubscribe value)? subscribe,
    TResult Function(_ParametersUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _ParametersSubscribe implements ParametersEvent {
  const factory _ParametersSubscribe(final String metadataTypeId) =
      _$ParametersSubscribeImpl;

  String get metadataTypeId;
  @JsonKey(ignore: true)
  _$$ParametersSubscribeImplCopyWith<_$ParametersSubscribeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParametersUnsubscribeImplCopyWith<$Res> {
  factory _$$ParametersUnsubscribeImplCopyWith(
          _$ParametersUnsubscribeImpl value,
          $Res Function(_$ParametersUnsubscribeImpl) then) =
      __$$ParametersUnsubscribeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String metadataTypeId});
}

/// @nodoc
class __$$ParametersUnsubscribeImplCopyWithImpl<$Res>
    extends _$ParametersEventCopyWithImpl<$Res, _$ParametersUnsubscribeImpl>
    implements _$$ParametersUnsubscribeImplCopyWith<$Res> {
  __$$ParametersUnsubscribeImplCopyWithImpl(_$ParametersUnsubscribeImpl _value,
      $Res Function(_$ParametersUnsubscribeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadataTypeId = null,
  }) {
    return _then(_$ParametersUnsubscribeImpl(
      null == metadataTypeId
          ? _value.metadataTypeId
          : metadataTypeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParametersUnsubscribeImpl implements _ParametersUnsubscribe {
  const _$ParametersUnsubscribeImpl(this.metadataTypeId);

  @override
  final String metadataTypeId;

  @override
  String toString() {
    return 'ParametersEvent.unsubscribe(metadataTypeId: $metadataTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersUnsubscribeImpl &&
            (identical(other.metadataTypeId, metadataTypeId) ||
                other.metadataTypeId == metadataTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, metadataTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersUnsubscribeImplCopyWith<_$ParametersUnsubscribeImpl>
      get copyWith => __$$ParametersUnsubscribeImplCopyWithImpl<
          _$ParametersUnsubscribeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String metadataTypeId) subscribe,
    required TResult Function(String metadataTypeId) unsubscribe,
  }) {
    return unsubscribe(metadataTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String metadataTypeId)? subscribe,
    TResult? Function(String metadataTypeId)? unsubscribe,
  }) {
    return unsubscribe?.call(metadataTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String metadataTypeId)? subscribe,
    TResult Function(String metadataTypeId)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(metadataTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersLoad value) load,
    required TResult Function(_ParametersSubscribe value) subscribe,
    required TResult Function(_ParametersUnsubscribe value) unsubscribe,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersLoad value)? load,
    TResult? Function(_ParametersSubscribe value)? subscribe,
    TResult? Function(_ParametersUnsubscribe value)? unsubscribe,
  }) {
    return unsubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersLoad value)? load,
    TResult Function(_ParametersSubscribe value)? subscribe,
    TResult Function(_ParametersUnsubscribe value)? unsubscribe,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class _ParametersUnsubscribe implements ParametersEvent {
  const factory _ParametersUnsubscribe(final String metadataTypeId) =
      _$ParametersUnsubscribeImpl;

  String get metadataTypeId;
  @JsonKey(ignore: true)
  _$$ParametersUnsubscribeImplCopyWith<_$ParametersUnsubscribeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParametersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersInitial value) initial,
    required TResult Function(_ParametersLoading value) loading,
    required TResult Function(_ParametersLoaded value) loaded,
    required TResult Function(_ParametersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersInitial value)? initial,
    TResult? Function(_ParametersLoading value)? loading,
    TResult? Function(_ParametersLoaded value)? loaded,
    TResult? Function(_ParametersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersInitial value)? initial,
    TResult Function(_ParametersLoading value)? loading,
    TResult Function(_ParametersLoaded value)? loaded,
    TResult Function(_ParametersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersStateCopyWith<$Res> {
  factory $ParametersStateCopyWith(
          ParametersState value, $Res Function(ParametersState) then) =
      _$ParametersStateCopyWithImpl<$Res, ParametersState>;
}

/// @nodoc
class _$ParametersStateCopyWithImpl<$Res, $Val extends ParametersState>
    implements $ParametersStateCopyWith<$Res> {
  _$ParametersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ParametersInitialImplCopyWith<$Res> {
  factory _$$ParametersInitialImplCopyWith(_$ParametersInitialImpl value,
          $Res Function(_$ParametersInitialImpl) then) =
      __$$ParametersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParametersInitialImplCopyWithImpl<$Res>
    extends _$ParametersStateCopyWithImpl<$Res, _$ParametersInitialImpl>
    implements _$$ParametersInitialImplCopyWith<$Res> {
  __$$ParametersInitialImplCopyWithImpl(_$ParametersInitialImpl _value,
      $Res Function(_$ParametersInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParametersInitialImpl implements _ParametersInitial {
  const _$ParametersInitialImpl();

  @override
  String toString() {
    return 'ParametersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParametersInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersInitial value) initial,
    required TResult Function(_ParametersLoading value) loading,
    required TResult Function(_ParametersLoaded value) loaded,
    required TResult Function(_ParametersError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersInitial value)? initial,
    TResult? Function(_ParametersLoading value)? loading,
    TResult? Function(_ParametersLoaded value)? loaded,
    TResult? Function(_ParametersError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersInitial value)? initial,
    TResult Function(_ParametersLoading value)? loading,
    TResult Function(_ParametersLoaded value)? loaded,
    TResult Function(_ParametersError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ParametersInitial implements ParametersState {
  const factory _ParametersInitial() = _$ParametersInitialImpl;
}

/// @nodoc
abstract class _$$ParametersLoadingImplCopyWith<$Res> {
  factory _$$ParametersLoadingImplCopyWith(_$ParametersLoadingImpl value,
          $Res Function(_$ParametersLoadingImpl) then) =
      __$$ParametersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParametersLoadingImplCopyWithImpl<$Res>
    extends _$ParametersStateCopyWithImpl<$Res, _$ParametersLoadingImpl>
    implements _$$ParametersLoadingImplCopyWith<$Res> {
  __$$ParametersLoadingImplCopyWithImpl(_$ParametersLoadingImpl _value,
      $Res Function(_$ParametersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParametersLoadingImpl implements _ParametersLoading {
  const _$ParametersLoadingImpl();

  @override
  String toString() {
    return 'ParametersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParametersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersInitial value) initial,
    required TResult Function(_ParametersLoading value) loading,
    required TResult Function(_ParametersLoaded value) loaded,
    required TResult Function(_ParametersError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersInitial value)? initial,
    TResult? Function(_ParametersLoading value)? loading,
    TResult? Function(_ParametersLoaded value)? loaded,
    TResult? Function(_ParametersError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersInitial value)? initial,
    TResult Function(_ParametersLoading value)? loading,
    TResult Function(_ParametersLoaded value)? loaded,
    TResult Function(_ParametersError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ParametersLoading implements ParametersState {
  const factory _ParametersLoading() = _$ParametersLoadingImpl;
}

/// @nodoc
abstract class _$$ParametersLoadedImplCopyWith<$Res> {
  factory _$$ParametersLoadedImplCopyWith(_$ParametersLoadedImpl value,
          $Res Function(_$ParametersLoadedImpl) then) =
      __$$ParametersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MetadataType> allMetadataTypes,
      List<String> subscribedMetadataTypeIds});
}

/// @nodoc
class __$$ParametersLoadedImplCopyWithImpl<$Res>
    extends _$ParametersStateCopyWithImpl<$Res, _$ParametersLoadedImpl>
    implements _$$ParametersLoadedImplCopyWith<$Res> {
  __$$ParametersLoadedImplCopyWithImpl(_$ParametersLoadedImpl _value,
      $Res Function(_$ParametersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMetadataTypes = null,
    Object? subscribedMetadataTypeIds = null,
  }) {
    return _then(_$ParametersLoadedImpl(
      allMetadataTypes: null == allMetadataTypes
          ? _value._allMetadataTypes
          : allMetadataTypes // ignore: cast_nullable_to_non_nullable
              as List<MetadataType>,
      subscribedMetadataTypeIds: null == subscribedMetadataTypeIds
          ? _value._subscribedMetadataTypeIds
          : subscribedMetadataTypeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ParametersLoadedImpl implements _ParametersLoaded {
  const _$ParametersLoadedImpl(
      {required final List<MetadataType> allMetadataTypes,
      required final List<String> subscribedMetadataTypeIds})
      : _allMetadataTypes = allMetadataTypes,
        _subscribedMetadataTypeIds = subscribedMetadataTypeIds;

  final List<MetadataType> _allMetadataTypes;
  @override
  List<MetadataType> get allMetadataTypes {
    if (_allMetadataTypes is EqualUnmodifiableListView)
      return _allMetadataTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMetadataTypes);
  }

  final List<String> _subscribedMetadataTypeIds;
  @override
  List<String> get subscribedMetadataTypeIds {
    if (_subscribedMetadataTypeIds is EqualUnmodifiableListView)
      return _subscribedMetadataTypeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribedMetadataTypeIds);
  }

  @override
  String toString() {
    return 'ParametersState.loaded(allMetadataTypes: $allMetadataTypes, subscribedMetadataTypeIds: $subscribedMetadataTypeIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._allMetadataTypes, _allMetadataTypes) &&
            const DeepCollectionEquality().equals(
                other._subscribedMetadataTypeIds, _subscribedMetadataTypeIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allMetadataTypes),
      const DeepCollectionEquality().hash(_subscribedMetadataTypeIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersLoadedImplCopyWith<_$ParametersLoadedImpl> get copyWith =>
      __$$ParametersLoadedImplCopyWithImpl<_$ParametersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(allMetadataTypes, subscribedMetadataTypeIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(allMetadataTypes, subscribedMetadataTypeIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(allMetadataTypes, subscribedMetadataTypeIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersInitial value) initial,
    required TResult Function(_ParametersLoading value) loading,
    required TResult Function(_ParametersLoaded value) loaded,
    required TResult Function(_ParametersError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersInitial value)? initial,
    TResult? Function(_ParametersLoading value)? loading,
    TResult? Function(_ParametersLoaded value)? loaded,
    TResult? Function(_ParametersError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersInitial value)? initial,
    TResult Function(_ParametersLoading value)? loading,
    TResult Function(_ParametersLoaded value)? loaded,
    TResult Function(_ParametersError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ParametersLoaded implements ParametersState {
  const factory _ParametersLoaded(
          {required final List<MetadataType> allMetadataTypes,
          required final List<String> subscribedMetadataTypeIds}) =
      _$ParametersLoadedImpl;

  List<MetadataType> get allMetadataTypes;
  List<String> get subscribedMetadataTypeIds;
  @JsonKey(ignore: true)
  _$$ParametersLoadedImplCopyWith<_$ParametersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParametersErrorImplCopyWith<$Res> {
  factory _$$ParametersErrorImplCopyWith(_$ParametersErrorImpl value,
          $Res Function(_$ParametersErrorImpl) then) =
      __$$ParametersErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ParametersErrorImplCopyWithImpl<$Res>
    extends _$ParametersStateCopyWithImpl<$Res, _$ParametersErrorImpl>
    implements _$$ParametersErrorImplCopyWith<$Res> {
  __$$ParametersErrorImplCopyWithImpl(
      _$ParametersErrorImpl _value, $Res Function(_$ParametersErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ParametersErrorImpl implements _ParametersError {
  const _$ParametersErrorImpl();

  @override
  String toString() {
    return 'ParametersState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ParametersErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MetadataType> allMetadataTypes,
            List<String> subscribedMetadataTypeIds)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ParametersInitial value) initial,
    required TResult Function(_ParametersLoading value) loading,
    required TResult Function(_ParametersLoaded value) loaded,
    required TResult Function(_ParametersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ParametersInitial value)? initial,
    TResult? Function(_ParametersLoading value)? loading,
    TResult? Function(_ParametersLoaded value)? loaded,
    TResult? Function(_ParametersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ParametersInitial value)? initial,
    TResult Function(_ParametersLoading value)? loading,
    TResult Function(_ParametersLoaded value)? loaded,
    TResult Function(_ParametersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ParametersError implements ParametersState {
  const factory _ParametersError() = _$ParametersErrorImpl;
}
