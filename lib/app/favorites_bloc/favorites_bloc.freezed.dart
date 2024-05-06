// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  FavoriteSort get favoriteCriteria => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort favoriteCriteria) load,
    required TResult Function(FavoriteSort favoriteCriteria) updateCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort favoriteCriteria)? load,
    TResult? Function(FavoriteSort favoriteCriteria)? updateCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort favoriteCriteria)? load,
    TResult Function(FavoriteSort favoriteCriteria)? updateCriteria,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateCriteria value) updateCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateCriteria value)? updateCriteria,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateCriteria value)? updateCriteria,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesEventCopyWith<FavoritesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
  @useResult
  $Res call({FavoriteSort favoriteCriteria});
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCriteria = null,
  }) {
    return _then(_value.copyWith(
      favoriteCriteria: null == favoriteCriteria
          ? _value.favoriteCriteria
          : favoriteCriteria // ignore: cast_nullable_to_non_nullable
              as FavoriteSort,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesLoadImplCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory _$$FavoritesLoadImplCopyWith(
          _$FavoritesLoadImpl value, $Res Function(_$FavoritesLoadImpl) then) =
      __$$FavoritesLoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteSort favoriteCriteria});
}

/// @nodoc
class __$$FavoritesLoadImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FavoritesLoadImpl>
    implements _$$FavoritesLoadImplCopyWith<$Res> {
  __$$FavoritesLoadImplCopyWithImpl(
      _$FavoritesLoadImpl _value, $Res Function(_$FavoritesLoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCriteria = null,
  }) {
    return _then(_$FavoritesLoadImpl(
      null == favoriteCriteria
          ? _value.favoriteCriteria
          : favoriteCriteria // ignore: cast_nullable_to_non_nullable
              as FavoriteSort,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadImpl implements _FavoritesLoad {
  const _$FavoritesLoadImpl(this.favoriteCriteria);

  @override
  final FavoriteSort favoriteCriteria;

  @override
  String toString() {
    return 'FavoritesEvent.load(favoriteCriteria: $favoriteCriteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadImpl &&
            (identical(other.favoriteCriteria, favoriteCriteria) ||
                other.favoriteCriteria == favoriteCriteria));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteCriteria);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadImplCopyWith<_$FavoritesLoadImpl> get copyWith =>
      __$$FavoritesLoadImplCopyWithImpl<_$FavoritesLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort favoriteCriteria) load,
    required TResult Function(FavoriteSort favoriteCriteria) updateCriteria,
  }) {
    return load(favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort favoriteCriteria)? load,
    TResult? Function(FavoriteSort favoriteCriteria)? updateCriteria,
  }) {
    return load?.call(favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort favoriteCriteria)? load,
    TResult Function(FavoriteSort favoriteCriteria)? updateCriteria,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(favoriteCriteria);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateCriteria value) updateCriteria,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateCriteria value)? updateCriteria,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateCriteria value)? updateCriteria,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoad implements FavoritesEvent {
  const factory _FavoritesLoad(final FavoriteSort favoriteCriteria) =
      _$FavoritesLoadImpl;

  @override
  FavoriteSort get favoriteCriteria;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesLoadImplCopyWith<_$FavoritesLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesUpdateCriteriaImplCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory _$$FavoritesUpdateCriteriaImplCopyWith(
          _$FavoritesUpdateCriteriaImpl value,
          $Res Function(_$FavoritesUpdateCriteriaImpl) then) =
      __$$FavoritesUpdateCriteriaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteSort favoriteCriteria});
}

/// @nodoc
class __$$FavoritesUpdateCriteriaImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FavoritesUpdateCriteriaImpl>
    implements _$$FavoritesUpdateCriteriaImplCopyWith<$Res> {
  __$$FavoritesUpdateCriteriaImplCopyWithImpl(
      _$FavoritesUpdateCriteriaImpl _value,
      $Res Function(_$FavoritesUpdateCriteriaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteCriteria = null,
  }) {
    return _then(_$FavoritesUpdateCriteriaImpl(
      null == favoriteCriteria
          ? _value.favoriteCriteria
          : favoriteCriteria // ignore: cast_nullable_to_non_nullable
              as FavoriteSort,
    ));
  }
}

/// @nodoc

class _$FavoritesUpdateCriteriaImpl implements _FavoritesUpdateCriteria {
  const _$FavoritesUpdateCriteriaImpl(this.favoriteCriteria);

  @override
  final FavoriteSort favoriteCriteria;

  @override
  String toString() {
    return 'FavoritesEvent.updateCriteria(favoriteCriteria: $favoriteCriteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesUpdateCriteriaImpl &&
            (identical(other.favoriteCriteria, favoriteCriteria) ||
                other.favoriteCriteria == favoriteCriteria));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteCriteria);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesUpdateCriteriaImplCopyWith<_$FavoritesUpdateCriteriaImpl>
      get copyWith => __$$FavoritesUpdateCriteriaImplCopyWithImpl<
          _$FavoritesUpdateCriteriaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteSort favoriteCriteria) load,
    required TResult Function(FavoriteSort favoriteCriteria) updateCriteria,
  }) {
    return updateCriteria(favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteSort favoriteCriteria)? load,
    TResult? Function(FavoriteSort favoriteCriteria)? updateCriteria,
  }) {
    return updateCriteria?.call(favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteSort favoriteCriteria)? load,
    TResult Function(FavoriteSort favoriteCriteria)? updateCriteria,
    required TResult orElse(),
  }) {
    if (updateCriteria != null) {
      return updateCriteria(favoriteCriteria);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateCriteria value) updateCriteria,
  }) {
    return updateCriteria(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateCriteria value)? updateCriteria,
  }) {
    return updateCriteria?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateCriteria value)? updateCriteria,
    required TResult orElse(),
  }) {
    if (updateCriteria != null) {
      return updateCriteria(this);
    }
    return orElse();
  }
}

abstract class _FavoritesUpdateCriteria implements FavoritesEvent {
  const factory _FavoritesUpdateCriteria(final FavoriteSort favoriteCriteria) =
      _$FavoritesUpdateCriteriaImpl;

  @override
  FavoriteSort get favoriteCriteria;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesUpdateCriteriaImplCopyWith<_$FavoritesUpdateCriteriaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesInitial value) initial,
    required TResult Function(_FavoritesLoading value) loading,
    required TResult Function(_FavoritesLoaded value) loaded,
    required TResult Function(_FavoritesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitial value)? initial,
    TResult? Function(_FavoritesLoading value)? loading,
    TResult? Function(_FavoritesLoaded value)? loaded,
    TResult? Function(_FavoritesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitial value)? initial,
    TResult Function(_FavoritesLoading value)? loading,
    TResult Function(_FavoritesLoaded value)? loaded,
    TResult Function(_FavoritesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesInitialImplCopyWith<$Res> {
  factory _$$FavoritesInitialImplCopyWith(_$FavoritesInitialImpl value,
          $Res Function(_$FavoritesInitialImpl) then) =
      __$$FavoritesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesInitialImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesInitialImpl>
    implements _$$FavoritesInitialImplCopyWith<$Res> {
  __$$FavoritesInitialImplCopyWithImpl(_$FavoritesInitialImpl _value,
      $Res Function(_$FavoritesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesInitialImpl implements _FavoritesInitial {
  const _$FavoritesInitialImpl();

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)
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
    TResult? Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    required TResult Function(_FavoritesInitial value) initial,
    required TResult Function(_FavoritesLoading value) loading,
    required TResult Function(_FavoritesLoaded value) loaded,
    required TResult Function(_FavoritesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitial value)? initial,
    TResult? Function(_FavoritesLoading value)? loading,
    TResult? Function(_FavoritesLoaded value)? loaded,
    TResult? Function(_FavoritesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitial value)? initial,
    TResult Function(_FavoritesLoading value)? loading,
    TResult Function(_FavoritesLoaded value)? loaded,
    TResult Function(_FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FavoritesInitial implements FavoritesState {
  const factory _FavoritesInitial() = _$FavoritesInitialImpl;
}

/// @nodoc
abstract class _$$FavoritesLoadingImplCopyWith<$Res> {
  factory _$$FavoritesLoadingImplCopyWith(_$FavoritesLoadingImpl value,
          $Res Function(_$FavoritesLoadingImpl) then) =
      __$$FavoritesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesLoadingImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadingImpl>
    implements _$$FavoritesLoadingImplCopyWith<$Res> {
  __$$FavoritesLoadingImplCopyWithImpl(_$FavoritesLoadingImpl _value,
      $Res Function(_$FavoritesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesLoadingImpl implements _FavoritesLoading {
  const _$FavoritesLoadingImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)
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
    TResult? Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    required TResult Function(_FavoritesInitial value) initial,
    required TResult Function(_FavoritesLoading value) loading,
    required TResult Function(_FavoritesLoaded value) loaded,
    required TResult Function(_FavoritesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitial value)? initial,
    TResult? Function(_FavoritesLoading value)? loading,
    TResult? Function(_FavoritesLoaded value)? loaded,
    TResult? Function(_FavoritesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitial value)? initial,
    TResult Function(_FavoritesLoading value)? loading,
    TResult Function(_FavoritesLoaded value)? loaded,
    TResult Function(_FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoading implements FavoritesState {
  const factory _FavoritesLoading() = _$FavoritesLoadingImpl;
}

/// @nodoc
abstract class _$$FavoritesLoadedImplCopyWith<$Res> {
  factory _$$FavoritesLoadedImplCopyWith(_$FavoritesLoadedImpl value,
          $Res Function(_$FavoritesLoadedImpl) then) =
      __$$FavoritesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ListProduct> favorites, FavoriteSort favoriteCriteria});
}

/// @nodoc
class __$$FavoritesLoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesLoadedImpl>
    implements _$$FavoritesLoadedImplCopyWith<$Res> {
  __$$FavoritesLoadedImplCopyWithImpl(
      _$FavoritesLoadedImpl _value, $Res Function(_$FavoritesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? favoriteCriteria = null,
  }) {
    return _then(_$FavoritesLoadedImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ListProduct>,
      favoriteCriteria: null == favoriteCriteria
          ? _value.favoriteCriteria
          : favoriteCriteria // ignore: cast_nullable_to_non_nullable
              as FavoriteSort,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadedImpl implements _FavoritesLoaded {
  const _$FavoritesLoadedImpl(
      {required final List<ListProduct> favorites,
      required this.favoriteCriteria})
      : _favorites = favorites;

  final List<ListProduct> _favorites;
  @override
  List<ListProduct> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final FavoriteSort favoriteCriteria;

  @override
  String toString() {
    return 'FavoritesState.loaded(favorites: $favorites, favoriteCriteria: $favoriteCriteria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.favoriteCriteria, favoriteCriteria) ||
                other.favoriteCriteria == favoriteCriteria));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favorites), favoriteCriteria);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      __$$FavoritesLoadedImplCopyWithImpl<_$FavoritesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(favorites, favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(favorites, favoriteCriteria);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites, favoriteCriteria);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesInitial value) initial,
    required TResult Function(_FavoritesLoading value) loading,
    required TResult Function(_FavoritesLoaded value) loaded,
    required TResult Function(_FavoritesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitial value)? initial,
    TResult? Function(_FavoritesLoading value)? loading,
    TResult? Function(_FavoritesLoaded value)? loaded,
    TResult? Function(_FavoritesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitial value)? initial,
    TResult Function(_FavoritesLoading value)? loading,
    TResult Function(_FavoritesLoaded value)? loaded,
    TResult Function(_FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoaded implements FavoritesState {
  const factory _FavoritesLoaded(
      {required final List<ListProduct> favorites,
      required final FavoriteSort favoriteCriteria}) = _$FavoritesLoadedImpl;

  List<ListProduct> get favorites;
  FavoriteSort get favoriteCriteria;
  @JsonKey(ignore: true)
  _$$FavoritesLoadedImplCopyWith<_$FavoritesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesErrorImplCopyWith<$Res> {
  factory _$$FavoritesErrorImplCopyWith(_$FavoritesErrorImpl value,
          $Res Function(_$FavoritesErrorImpl) then) =
      __$$FavoritesErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesErrorImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesErrorImpl>
    implements _$$FavoritesErrorImplCopyWith<$Res> {
  __$$FavoritesErrorImplCopyWithImpl(
      _$FavoritesErrorImpl _value, $Res Function(_$FavoritesErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesErrorImpl implements _FavoritesError {
  const _$FavoritesErrorImpl();

  @override
  String toString() {
    return 'FavoritesState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoritesErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)
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
    TResult? Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    TResult Function(
            List<ListProduct> favorites, FavoriteSort favoriteCriteria)?
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
    required TResult Function(_FavoritesInitial value) initial,
    required TResult Function(_FavoritesLoading value) loading,
    required TResult Function(_FavoritesLoaded value) loaded,
    required TResult Function(_FavoritesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitial value)? initial,
    TResult? Function(_FavoritesLoading value)? loading,
    TResult? Function(_FavoritesLoaded value)? loaded,
    TResult? Function(_FavoritesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitial value)? initial,
    TResult Function(_FavoritesLoading value)? loading,
    TResult Function(_FavoritesLoaded value)? loaded,
    TResult Function(_FavoritesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoritesError implements FavoritesState {
  const factory _FavoritesError() = _$FavoritesErrorImpl;
}
