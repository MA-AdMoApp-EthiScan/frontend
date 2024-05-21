// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String userId) load,
    required TResult Function(String barcodeId) addFavorite,
    required TResult Function(String barcodeId) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String userId)? load,
    TResult? Function(String barcodeId)? addFavorite,
    TResult? Function(String barcodeId)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String userId)? load,
    TResult Function(String barcodeId)? addFavorite,
    TResult Function(String barcodeId)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoad value) load,
    required TResult Function(_ProductAddFavorite value) addFavorite,
    required TResult Function(_ProductRemoveFavorite value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoad value)? load,
    TResult? Function(_ProductAddFavorite value)? addFavorite,
    TResult? Function(_ProductRemoveFavorite value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoad value)? load,
    TResult Function(_ProductAddFavorite value)? addFavorite,
    TResult Function(_ProductRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductLoadImplCopyWith<$Res> {
  factory _$$ProductLoadImplCopyWith(
          _$ProductLoadImpl value, $Res Function(_$ProductLoadImpl) then) =
      __$$ProductLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String userId});
}

/// @nodoc
class __$$ProductLoadImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductLoadImpl>
    implements _$$ProductLoadImplCopyWith<$Res> {
  __$$ProductLoadImplCopyWithImpl(
      _$ProductLoadImpl _value, $Res Function(_$ProductLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
  }) {
    return _then(_$ProductLoadImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductLoadImpl implements _ProductLoad {
  const _$ProductLoadImpl(this.id, this.userId);

  @override
  final String id;
  @override
  final String userId;

  @override
  String toString() {
    return 'ProductEvent.load(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadImplCopyWith<_$ProductLoadImpl> get copyWith =>
      __$$ProductLoadImplCopyWithImpl<_$ProductLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String userId) load,
    required TResult Function(String barcodeId) addFavorite,
    required TResult Function(String barcodeId) removeFavorite,
  }) {
    return load(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String userId)? load,
    TResult? Function(String barcodeId)? addFavorite,
    TResult? Function(String barcodeId)? removeFavorite,
  }) {
    return load?.call(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String userId)? load,
    TResult Function(String barcodeId)? addFavorite,
    TResult Function(String barcodeId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoad value) load,
    required TResult Function(_ProductAddFavorite value) addFavorite,
    required TResult Function(_ProductRemoveFavorite value) removeFavorite,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoad value)? load,
    TResult? Function(_ProductAddFavorite value)? addFavorite,
    TResult? Function(_ProductRemoveFavorite value)? removeFavorite,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoad value)? load,
    TResult Function(_ProductAddFavorite value)? addFavorite,
    TResult Function(_ProductRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _ProductLoad implements ProductEvent {
  const factory _ProductLoad(final String id, final String userId) =
      _$ProductLoadImpl;

  String get id;
  String get userId;
  @JsonKey(ignore: true)
  _$$ProductLoadImplCopyWith<_$ProductLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductAddFavoriteImplCopyWith<$Res> {
  factory _$$ProductAddFavoriteImplCopyWith(_$ProductAddFavoriteImpl value,
          $Res Function(_$ProductAddFavoriteImpl) then) =
      __$$ProductAddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcodeId});
}

/// @nodoc
class __$$ProductAddFavoriteImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductAddFavoriteImpl>
    implements _$$ProductAddFavoriteImplCopyWith<$Res> {
  __$$ProductAddFavoriteImplCopyWithImpl(_$ProductAddFavoriteImpl _value,
      $Res Function(_$ProductAddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeId = null,
  }) {
    return _then(_$ProductAddFavoriteImpl(
      null == barcodeId
          ? _value.barcodeId
          : barcodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductAddFavoriteImpl implements _ProductAddFavorite {
  const _$ProductAddFavoriteImpl(this.barcodeId);

  @override
  final String barcodeId;

  @override
  String toString() {
    return 'ProductEvent.addFavorite(barcodeId: $barcodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAddFavoriteImpl &&
            (identical(other.barcodeId, barcodeId) ||
                other.barcodeId == barcodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAddFavoriteImplCopyWith<_$ProductAddFavoriteImpl> get copyWith =>
      __$$ProductAddFavoriteImplCopyWithImpl<_$ProductAddFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String userId) load,
    required TResult Function(String barcodeId) addFavorite,
    required TResult Function(String barcodeId) removeFavorite,
  }) {
    return addFavorite(barcodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String userId)? load,
    TResult? Function(String barcodeId)? addFavorite,
    TResult? Function(String barcodeId)? removeFavorite,
  }) {
    return addFavorite?.call(barcodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String userId)? load,
    TResult Function(String barcodeId)? addFavorite,
    TResult Function(String barcodeId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(barcodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoad value) load,
    required TResult Function(_ProductAddFavorite value) addFavorite,
    required TResult Function(_ProductRemoveFavorite value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoad value)? load,
    TResult? Function(_ProductAddFavorite value)? addFavorite,
    TResult? Function(_ProductRemoveFavorite value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoad value)? load,
    TResult Function(_ProductAddFavorite value)? addFavorite,
    TResult Function(_ProductRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _ProductAddFavorite implements ProductEvent {
  const factory _ProductAddFavorite(final String barcodeId) =
      _$ProductAddFavoriteImpl;

  String get barcodeId;
  @JsonKey(ignore: true)
  _$$ProductAddFavoriteImplCopyWith<_$ProductAddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductRemoveFavoriteImplCopyWith<$Res> {
  factory _$$ProductRemoveFavoriteImplCopyWith(
          _$ProductRemoveFavoriteImpl value,
          $Res Function(_$ProductRemoveFavoriteImpl) then) =
      __$$ProductRemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String barcodeId});
}

/// @nodoc
class __$$ProductRemoveFavoriteImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductRemoveFavoriteImpl>
    implements _$$ProductRemoveFavoriteImplCopyWith<$Res> {
  __$$ProductRemoveFavoriteImplCopyWithImpl(_$ProductRemoveFavoriteImpl _value,
      $Res Function(_$ProductRemoveFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeId = null,
  }) {
    return _then(_$ProductRemoveFavoriteImpl(
      null == barcodeId
          ? _value.barcodeId
          : barcodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductRemoveFavoriteImpl implements _ProductRemoveFavorite {
  const _$ProductRemoveFavoriteImpl(this.barcodeId);

  @override
  final String barcodeId;

  @override
  String toString() {
    return 'ProductEvent.removeFavorite(barcodeId: $barcodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRemoveFavoriteImpl &&
            (identical(other.barcodeId, barcodeId) ||
                other.barcodeId == barcodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRemoveFavoriteImplCopyWith<_$ProductRemoveFavoriteImpl>
      get copyWith => __$$ProductRemoveFavoriteImplCopyWithImpl<
          _$ProductRemoveFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String userId) load,
    required TResult Function(String barcodeId) addFavorite,
    required TResult Function(String barcodeId) removeFavorite,
  }) {
    return removeFavorite(barcodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String userId)? load,
    TResult? Function(String barcodeId)? addFavorite,
    TResult? Function(String barcodeId)? removeFavorite,
  }) {
    return removeFavorite?.call(barcodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String userId)? load,
    TResult Function(String barcodeId)? addFavorite,
    TResult Function(String barcodeId)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(barcodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoad value) load,
    required TResult Function(_ProductAddFavorite value) addFavorite,
    required TResult Function(_ProductRemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoad value)? load,
    TResult? Function(_ProductAddFavorite value)? addFavorite,
    TResult? Function(_ProductRemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoad value)? load,
    TResult Function(_ProductAddFavorite value)? addFavorite,
    TResult Function(_ProductRemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _ProductRemoveFavorite implements ProductEvent {
  const factory _ProductRemoveFavorite(final String barcodeId) =
      _$ProductRemoveFavoriteImpl;

  String get barcodeId;
  @JsonKey(ignore: true)
  _$$ProductRemoveFavoriteImplCopyWith<_$ProductRemoveFavoriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)
        loaded,
    required TResult Function(APIError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult? Function(APIError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductInitialImplCopyWith<$Res> {
  factory _$$ProductInitialImplCopyWith(_$ProductInitialImpl value,
          $Res Function(_$ProductInitialImpl) then) =
      __$$ProductInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductInitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductInitialImpl>
    implements _$$ProductInitialImplCopyWith<$Res> {
  __$$ProductInitialImplCopyWithImpl(
      _$ProductInitialImpl _value, $Res Function(_$ProductInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductInitialImpl implements _ProductInitial {
  const _$ProductInitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)
        loaded,
    required TResult Function(APIError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult? Function(APIError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult Function(APIError error)? error,
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
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProductInitial implements ProductState {
  const factory _ProductInitial() = _$ProductInitialImpl;
}

/// @nodoc
abstract class _$$ProductLoadingImplCopyWith<$Res> {
  factory _$$ProductLoadingImplCopyWith(_$ProductLoadingImpl value,
          $Res Function(_$ProductLoadingImpl) then) =
      __$$ProductLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductLoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadingImpl>
    implements _$$ProductLoadingImplCopyWith<$Res> {
  __$$ProductLoadingImplCopyWithImpl(
      _$ProductLoadingImpl _value, $Res Function(_$ProductLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductLoadingImpl implements _ProductLoading {
  const _$ProductLoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)
        loaded,
    required TResult Function(APIError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult? Function(APIError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult Function(APIError error)? error,
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
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductLoading implements ProductState {
  const factory _ProductLoading() = _$ProductLoadingImpl;
}

/// @nodoc
abstract class _$$ProductLoadedImplCopyWith<$Res> {
  factory _$$ProductLoadedImplCopyWith(
          _$ProductLoadedImpl value, $Res Function(_$ProductLoadedImpl) then) =
      __$$ProductLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Product product,
      bool isInFavorite,
      List<MapEntry<MetadataType, ProductMetadata>> metadata,
      List<Certification> certifications});
}

/// @nodoc
class __$$ProductLoadedImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductLoadedImpl>
    implements _$$ProductLoadedImplCopyWith<$Res> {
  __$$ProductLoadedImplCopyWithImpl(
      _$ProductLoadedImpl _value, $Res Function(_$ProductLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? isInFavorite = null,
    Object? metadata = null,
    Object? certifications = null,
  }) {
    return _then(_$ProductLoadedImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      isInFavorite: null == isInFavorite
          ? _value.isInFavorite
          : isInFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MapEntry<MetadataType, ProductMetadata>>,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<Certification>,
    ));
  }
}

/// @nodoc

class _$ProductLoadedImpl implements _ProductLoaded {
  const _$ProductLoadedImpl(
      {required this.product,
      required this.isInFavorite,
      required final List<MapEntry<MetadataType, ProductMetadata>> metadata,
      required final List<Certification> certifications})
      : _metadata = metadata,
        _certifications = certifications;

  @override
  final Product product;
  @override
  final bool isInFavorite;
  final List<MapEntry<MetadataType, ProductMetadata>> _metadata;
  @override
  List<MapEntry<MetadataType, ProductMetadata>> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  final List<Certification> _certifications;
  @override
  List<Certification> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  @override
  String toString() {
    return 'ProductState.loaded(product: $product, isInFavorite: $isInFavorite, metadata: $metadata, certifications: $certifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLoadedImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.isInFavorite, isInFavorite) ||
                other.isInFavorite == isInFavorite) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      isInFavorite,
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_certifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      __$$ProductLoadedImplCopyWithImpl<_$ProductLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)
        loaded,
    required TResult Function(APIError error) error,
  }) {
    return loaded(product, isInFavorite, metadata, certifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult? Function(APIError error)? error,
  }) {
    return loaded?.call(product, isInFavorite, metadata, certifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product, isInFavorite, metadata, certifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductLoaded implements ProductState {
  const factory _ProductLoaded(
      {required final Product product,
      required final bool isInFavorite,
      required final List<MapEntry<MetadataType, ProductMetadata>> metadata,
      required final List<Certification> certifications}) = _$ProductLoadedImpl;

  Product get product;
  bool get isInFavorite;
  List<MapEntry<MetadataType, ProductMetadata>> get metadata;
  List<Certification> get certifications;
  @JsonKey(ignore: true)
  _$$ProductLoadedImplCopyWith<_$ProductLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductErrorImplCopyWith<$Res> {
  factory _$$ProductErrorImplCopyWith(
          _$ProductErrorImpl value, $Res Function(_$ProductErrorImpl) then) =
      __$$ProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({APIError error});
}

/// @nodoc
class __$$ProductErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductErrorImpl>
    implements _$$ProductErrorImplCopyWith<$Res> {
  __$$ProductErrorImplCopyWithImpl(
      _$ProductErrorImpl _value, $Res Function(_$ProductErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as APIError,
    ));
  }
}

/// @nodoc

class _$ProductErrorImpl implements _ProductError {
  const _$ProductErrorImpl({required this.error});

  @override
  final APIError error;

  @override
  String toString() {
    return 'ProductState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      __$$ProductErrorImplCopyWithImpl<_$ProductErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)
        loaded,
    required TResult Function(APIError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult? Function(APIError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Product product,
            bool isInFavorite,
            List<MapEntry<MetadataType, ProductMetadata>> metadata,
            List<Certification> certifications)?
        loaded,
    TResult Function(APIError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProductError implements ProductState {
  const factory _ProductError({required final APIError error}) =
      _$ProductErrorImpl;

  APIError get error;
  @JsonKey(ignore: true)
  _$$ProductErrorImplCopyWith<_$ProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
