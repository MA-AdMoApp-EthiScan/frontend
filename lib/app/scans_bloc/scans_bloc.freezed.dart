// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScansEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String barcode) barcodeFound,
    required TResult Function(String barcode) invalidBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String barcode)? barcodeFound,
    TResult? Function(String barcode)? invalidBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String barcode)? barcodeFound,
    TResult Function(String barcode)? invalidBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansLoad value) load,
    required TResult Function(_ScansBarcodeFound value) barcodeFound,
    required TResult Function(_ScansInvalidBarcode value) invalidBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansLoad value)? load,
    TResult? Function(_ScansBarcodeFound value)? barcodeFound,
    TResult? Function(_ScansInvalidBarcode value)? invalidBarcode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansLoad value)? load,
    TResult Function(_ScansBarcodeFound value)? barcodeFound,
    TResult Function(_ScansInvalidBarcode value)? invalidBarcode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScansEventCopyWith<$Res> {
  factory $ScansEventCopyWith(
          ScansEvent value, $Res Function(ScansEvent) then) =
      _$ScansEventCopyWithImpl<$Res, ScansEvent>;
}

/// @nodoc
class _$ScansEventCopyWithImpl<$Res, $Val extends ScansEvent>
    implements $ScansEventCopyWith<$Res> {
  _$ScansEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScansLoadImplCopyWith<$Res> {
  factory _$$ScansLoadImplCopyWith(
          _$ScansLoadImpl value, $Res Function(_$ScansLoadImpl) then) =
      __$$ScansLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScansLoadImplCopyWithImpl<$Res>
    extends _$ScansEventCopyWithImpl<$Res, _$ScansLoadImpl>
    implements _$$ScansLoadImplCopyWith<$Res> {
  __$$ScansLoadImplCopyWithImpl(
      _$ScansLoadImpl _value, $Res Function(_$ScansLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScansLoadImpl implements _ScansLoad {
  const _$ScansLoadImpl();

  @override
  String toString() {
    return 'ScansEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScansLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String barcode) barcodeFound,
    required TResult Function(String barcode) invalidBarcode,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String barcode)? barcodeFound,
    TResult? Function(String barcode)? invalidBarcode,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String barcode)? barcodeFound,
    TResult Function(String barcode)? invalidBarcode,
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
    required TResult Function(_ScansLoad value) load,
    required TResult Function(_ScansBarcodeFound value) barcodeFound,
    required TResult Function(_ScansInvalidBarcode value) invalidBarcode,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansLoad value)? load,
    TResult? Function(_ScansBarcodeFound value)? barcodeFound,
    TResult? Function(_ScansInvalidBarcode value)? invalidBarcode,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansLoad value)? load,
    TResult Function(_ScansBarcodeFound value)? barcodeFound,
    TResult Function(_ScansInvalidBarcode value)? invalidBarcode,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _ScansLoad implements ScansEvent {
  const factory _ScansLoad() = _$ScansLoadImpl;
}

/// @nodoc
abstract class _$$ScansBarcodeFoundImplCopyWith<$Res> {
  factory _$$ScansBarcodeFoundImplCopyWith(_$ScansBarcodeFoundImpl value,
          $Res Function(_$ScansBarcodeFoundImpl) then) =
      __$$ScansBarcodeFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class __$$ScansBarcodeFoundImplCopyWithImpl<$Res>
    extends _$ScansEventCopyWithImpl<$Res, _$ScansBarcodeFoundImpl>
    implements _$$ScansBarcodeFoundImplCopyWith<$Res> {
  __$$ScansBarcodeFoundImplCopyWithImpl(_$ScansBarcodeFoundImpl _value,
      $Res Function(_$ScansBarcodeFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$ScansBarcodeFoundImpl(
      null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScansBarcodeFoundImpl implements _ScansBarcodeFound {
  const _$ScansBarcodeFoundImpl(this.barcode);

  @override
  final String barcode;

  @override
  String toString() {
    return 'ScansEvent.barcodeFound(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScansBarcodeFoundImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScansBarcodeFoundImplCopyWith<_$ScansBarcodeFoundImpl> get copyWith =>
      __$$ScansBarcodeFoundImplCopyWithImpl<_$ScansBarcodeFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String barcode) barcodeFound,
    required TResult Function(String barcode) invalidBarcode,
  }) {
    return barcodeFound(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String barcode)? barcodeFound,
    TResult? Function(String barcode)? invalidBarcode,
  }) {
    return barcodeFound?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String barcode)? barcodeFound,
    TResult Function(String barcode)? invalidBarcode,
    required TResult orElse(),
  }) {
    if (barcodeFound != null) {
      return barcodeFound(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansLoad value) load,
    required TResult Function(_ScansBarcodeFound value) barcodeFound,
    required TResult Function(_ScansInvalidBarcode value) invalidBarcode,
  }) {
    return barcodeFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansLoad value)? load,
    TResult? Function(_ScansBarcodeFound value)? barcodeFound,
    TResult? Function(_ScansInvalidBarcode value)? invalidBarcode,
  }) {
    return barcodeFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansLoad value)? load,
    TResult Function(_ScansBarcodeFound value)? barcodeFound,
    TResult Function(_ScansInvalidBarcode value)? invalidBarcode,
    required TResult orElse(),
  }) {
    if (barcodeFound != null) {
      return barcodeFound(this);
    }
    return orElse();
  }
}

abstract class _ScansBarcodeFound implements ScansEvent {
  const factory _ScansBarcodeFound(final String barcode) =
      _$ScansBarcodeFoundImpl;

  String get barcode;
  @JsonKey(ignore: true)
  _$$ScansBarcodeFoundImplCopyWith<_$ScansBarcodeFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScansInvalidBarcodeImplCopyWith<$Res> {
  factory _$$ScansInvalidBarcodeImplCopyWith(_$ScansInvalidBarcodeImpl value,
          $Res Function(_$ScansInvalidBarcodeImpl) then) =
      __$$ScansInvalidBarcodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class __$$ScansInvalidBarcodeImplCopyWithImpl<$Res>
    extends _$ScansEventCopyWithImpl<$Res, _$ScansInvalidBarcodeImpl>
    implements _$$ScansInvalidBarcodeImplCopyWith<$Res> {
  __$$ScansInvalidBarcodeImplCopyWithImpl(_$ScansInvalidBarcodeImpl _value,
      $Res Function(_$ScansInvalidBarcodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$ScansInvalidBarcodeImpl(
      null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScansInvalidBarcodeImpl implements _ScansInvalidBarcode {
  const _$ScansInvalidBarcodeImpl(this.barcode);

  @override
  final String barcode;

  @override
  String toString() {
    return 'ScansEvent.invalidBarcode(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScansInvalidBarcodeImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScansInvalidBarcodeImplCopyWith<_$ScansInvalidBarcodeImpl> get copyWith =>
      __$$ScansInvalidBarcodeImplCopyWithImpl<_$ScansInvalidBarcodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String barcode) barcodeFound,
    required TResult Function(String barcode) invalidBarcode,
  }) {
    return invalidBarcode(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String barcode)? barcodeFound,
    TResult? Function(String barcode)? invalidBarcode,
  }) {
    return invalidBarcode?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String barcode)? barcodeFound,
    TResult Function(String barcode)? invalidBarcode,
    required TResult orElse(),
  }) {
    if (invalidBarcode != null) {
      return invalidBarcode(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansLoad value) load,
    required TResult Function(_ScansBarcodeFound value) barcodeFound,
    required TResult Function(_ScansInvalidBarcode value) invalidBarcode,
  }) {
    return invalidBarcode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansLoad value)? load,
    TResult? Function(_ScansBarcodeFound value)? barcodeFound,
    TResult? Function(_ScansInvalidBarcode value)? invalidBarcode,
  }) {
    return invalidBarcode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansLoad value)? load,
    TResult Function(_ScansBarcodeFound value)? barcodeFound,
    TResult Function(_ScansInvalidBarcode value)? invalidBarcode,
    required TResult orElse(),
  }) {
    if (invalidBarcode != null) {
      return invalidBarcode(this);
    }
    return orElse();
  }
}

abstract class _ScansInvalidBarcode implements ScansEvent {
  const factory _ScansInvalidBarcode(final String barcode) =
      _$ScansInvalidBarcodeImpl;

  String get barcode;
  @JsonKey(ignore: true)
  _$$ScansInvalidBarcodeImplCopyWith<_$ScansInvalidBarcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScansStateCopyWith<$Res> {
  factory $ScansStateCopyWith(
          ScansState value, $Res Function(ScansState) then) =
      _$ScansStateCopyWithImpl<$Res, ScansState>;
}

/// @nodoc
class _$ScansStateCopyWithImpl<$Res, $Val extends ScansState>
    implements $ScansStateCopyWith<$Res> {
  _$ScansStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScansInitialImplCopyWith<$Res> {
  factory _$$ScansInitialImplCopyWith(
          _$ScansInitialImpl value, $Res Function(_$ScansInitialImpl) then) =
      __$$ScansInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScansInitialImplCopyWithImpl<$Res>
    extends _$ScansStateCopyWithImpl<$Res, _$ScansInitialImpl>
    implements _$$ScansInitialImplCopyWith<$Res> {
  __$$ScansInitialImplCopyWithImpl(
      _$ScansInitialImpl _value, $Res Function(_$ScansInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScansInitialImpl implements _ScansInitial {
  const _$ScansInitialImpl();

  @override
  String toString() {
    return 'ScansState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScansInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
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
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ScansInitial implements ScansState {
  const factory _ScansInitial() = _$ScansInitialImpl;
}

/// @nodoc
abstract class _$$ScansLoadingImplCopyWith<$Res> {
  factory _$$ScansLoadingImplCopyWith(
          _$ScansLoadingImpl value, $Res Function(_$ScansLoadingImpl) then) =
      __$$ScansLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScansLoadingImplCopyWithImpl<$Res>
    extends _$ScansStateCopyWithImpl<$Res, _$ScansLoadingImpl>
    implements _$$ScansLoadingImplCopyWith<$Res> {
  __$$ScansLoadingImplCopyWithImpl(
      _$ScansLoadingImpl _value, $Res Function(_$ScansLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScansLoadingImpl implements _ScansLoading {
  const _$ScansLoadingImpl();

  @override
  String toString() {
    return 'ScansState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScansLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
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
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ScansLoading implements ScansState {
  const factory _ScansLoading() = _$ScansLoadingImpl;
}

/// @nodoc
abstract class _$$ScansLoadedImplCopyWith<$Res> {
  factory _$$ScansLoadedImplCopyWith(
          _$ScansLoadedImpl value, $Res Function(_$ScansLoadedImpl) then) =
      __$$ScansLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ScanHistory> scans});
}

/// @nodoc
class __$$ScansLoadedImplCopyWithImpl<$Res>
    extends _$ScansStateCopyWithImpl<$Res, _$ScansLoadedImpl>
    implements _$$ScansLoadedImplCopyWith<$Res> {
  __$$ScansLoadedImplCopyWithImpl(
      _$ScansLoadedImpl _value, $Res Function(_$ScansLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scans = null,
  }) {
    return _then(_$ScansLoadedImpl(
      scans: null == scans
          ? _value._scans
          : scans // ignore: cast_nullable_to_non_nullable
              as List<ScanHistory>,
    ));
  }
}

/// @nodoc

class _$ScansLoadedImpl implements _ScansLoaded {
  const _$ScansLoadedImpl({required final List<ScanHistory> scans})
      : _scans = scans;

  final List<ScanHistory> _scans;
  @override
  List<ScanHistory> get scans {
    if (_scans is EqualUnmodifiableListView) return _scans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scans);
  }

  @override
  String toString() {
    return 'ScansState.loaded(scans: $scans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScansLoadedImpl &&
            const DeepCollectionEquality().equals(other._scans, _scans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScansLoadedImplCopyWith<_$ScansLoadedImpl> get copyWith =>
      __$$ScansLoadedImplCopyWithImpl<_$ScansLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) {
    return loaded(scans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) {
    return loaded?.call(scans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(scans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ScansLoaded implements ScansState {
  const factory _ScansLoaded({required final List<ScanHistory> scans}) =
      _$ScansLoadedImpl;

  List<ScanHistory> get scans;
  @JsonKey(ignore: true)
  _$$ScansLoadedImplCopyWith<_$ScansLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScansErrorImplCopyWith<$Res> {
  factory _$$ScansErrorImplCopyWith(
          _$ScansErrorImpl value, $Res Function(_$ScansErrorImpl) then) =
      __$$ScansErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScansErrorImplCopyWithImpl<$Res>
    extends _$ScansStateCopyWithImpl<$Res, _$ScansErrorImpl>
    implements _$$ScansErrorImplCopyWith<$Res> {
  __$$ScansErrorImplCopyWithImpl(
      _$ScansErrorImpl _value, $Res Function(_$ScansErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScansErrorImpl implements _ScansError {
  const _$ScansErrorImpl();

  @override
  String toString() {
    return 'ScansState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScansErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
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
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ScansError implements ScansState {
  const factory _ScansError() = _$ScansErrorImpl;
}

/// @nodoc
abstract class _$$ScansBarcodeFoundStateImplCopyWith<$Res> {
  factory _$$ScansBarcodeFoundStateImplCopyWith(
          _$ScansBarcodeFoundStateImpl value,
          $Res Function(_$ScansBarcodeFoundStateImpl) then) =
      __$$ScansBarcodeFoundStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class __$$ScansBarcodeFoundStateImplCopyWithImpl<$Res>
    extends _$ScansStateCopyWithImpl<$Res, _$ScansBarcodeFoundStateImpl>
    implements _$$ScansBarcodeFoundStateImplCopyWith<$Res> {
  __$$ScansBarcodeFoundStateImplCopyWithImpl(
      _$ScansBarcodeFoundStateImpl _value,
      $Res Function(_$ScansBarcodeFoundStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcode = null,
  }) {
    return _then(_$ScansBarcodeFoundStateImpl(
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScansBarcodeFoundStateImpl implements _ScansBarcodeFoundState {
  const _$ScansBarcodeFoundStateImpl({required this.barcode});

  @override
  final String barcode;

  @override
  String toString() {
    return 'ScansState.barcodeFound(barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScansBarcodeFoundStateImpl &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScansBarcodeFoundStateImplCopyWith<_$ScansBarcodeFoundStateImpl>
      get copyWith => __$$ScansBarcodeFoundStateImplCopyWithImpl<
          _$ScansBarcodeFoundStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ScanHistory> scans) loaded,
    required TResult Function() error,
    required TResult Function(String barcode) barcodeFound,
  }) {
    return barcodeFound(barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ScanHistory> scans)? loaded,
    TResult? Function()? error,
    TResult? Function(String barcode)? barcodeFound,
  }) {
    return barcodeFound?.call(barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ScanHistory> scans)? loaded,
    TResult Function()? error,
    TResult Function(String barcode)? barcodeFound,
    required TResult orElse(),
  }) {
    if (barcodeFound != null) {
      return barcodeFound(barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScansInitial value) initial,
    required TResult Function(_ScansLoading value) loading,
    required TResult Function(_ScansLoaded value) loaded,
    required TResult Function(_ScansError value) error,
    required TResult Function(_ScansBarcodeFoundState value) barcodeFound,
  }) {
    return barcodeFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ScansInitial value)? initial,
    TResult? Function(_ScansLoading value)? loading,
    TResult? Function(_ScansLoaded value)? loaded,
    TResult? Function(_ScansError value)? error,
    TResult? Function(_ScansBarcodeFoundState value)? barcodeFound,
  }) {
    return barcodeFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScansInitial value)? initial,
    TResult Function(_ScansLoading value)? loading,
    TResult Function(_ScansLoaded value)? loaded,
    TResult Function(_ScansError value)? error,
    TResult Function(_ScansBarcodeFoundState value)? barcodeFound,
    required TResult orElse(),
  }) {
    if (barcodeFound != null) {
      return barcodeFound(this);
    }
    return orElse();
  }
}

abstract class _ScansBarcodeFoundState implements ScansState {
  const factory _ScansBarcodeFoundState({required final String barcode}) =
      _$ScansBarcodeFoundStateImpl;

  String get barcode;
  @JsonKey(ignore: true)
  _$$ScansBarcodeFoundStateImplCopyWith<_$ScansBarcodeFoundStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
