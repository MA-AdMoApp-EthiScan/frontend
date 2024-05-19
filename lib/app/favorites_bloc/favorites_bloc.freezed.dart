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
  EthiscanUser get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) load,
    required TResult Function(EthiscanUser user, FavoriteSort favoriteSort)
        updateSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? load,
    TResult? Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? load,
    TResult Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateSort value) updateSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateSort value)? updateSort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateSort value)? updateSort,
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
  $Res call({EthiscanUser user});
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
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EthiscanUser,
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
  $Res call({EthiscanUser user});
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
    Object? user = null,
  }) {
    return _then(_$FavoritesLoadImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EthiscanUser,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadImpl implements _FavoritesLoad {
  const _$FavoritesLoadImpl(this.user);

  @override
  final EthiscanUser user;

  @override
  String toString() {
    return 'FavoritesEvent.load(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesLoadImplCopyWith<_$FavoritesLoadImpl> get copyWith =>
      __$$FavoritesLoadImplCopyWithImpl<_$FavoritesLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) load,
    required TResult Function(EthiscanUser user, FavoriteSort favoriteSort)
        updateSort,
  }) {
    return load(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? load,
    TResult? Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
  }) {
    return load?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? load,
    TResult Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateSort value) updateSort,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateSort value)? updateSort,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateSort value)? updateSort,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoad implements FavoritesEvent {
  const factory _FavoritesLoad(final EthiscanUser user) = _$FavoritesLoadImpl;

  @override
  EthiscanUser get user;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesLoadImplCopyWith<_$FavoritesLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesUpdateSortImplCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory _$$FavoritesUpdateSortImplCopyWith(_$FavoritesUpdateSortImpl value,
          $Res Function(_$FavoritesUpdateSortImpl) then) =
      __$$FavoritesUpdateSortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EthiscanUser user, FavoriteSort favoriteSort});
}

/// @nodoc
class __$$FavoritesUpdateSortImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FavoritesUpdateSortImpl>
    implements _$$FavoritesUpdateSortImplCopyWith<$Res> {
  __$$FavoritesUpdateSortImplCopyWithImpl(_$FavoritesUpdateSortImpl _value,
      $Res Function(_$FavoritesUpdateSortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? favoriteSort = null,
  }) {
    return _then(_$FavoritesUpdateSortImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EthiscanUser,
      null == favoriteSort
          ? _value.favoriteSort
          : favoriteSort // ignore: cast_nullable_to_non_nullable
              as FavoriteSort,
    ));
  }
}

/// @nodoc

class _$FavoritesUpdateSortImpl implements _FavoritesUpdateSort {
  const _$FavoritesUpdateSortImpl(this.user, this.favoriteSort);

  @override
  final EthiscanUser user;
  @override
  final FavoriteSort favoriteSort;

  @override
  String toString() {
    return 'FavoritesEvent.updateSort(user: $user, favoriteSort: $favoriteSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesUpdateSortImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.favoriteSort, favoriteSort) ||
                other.favoriteSort == favoriteSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, favoriteSort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesUpdateSortImplCopyWith<_$FavoritesUpdateSortImpl> get copyWith =>
      __$$FavoritesUpdateSortImplCopyWithImpl<_$FavoritesUpdateSortImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) load,
    required TResult Function(EthiscanUser user, FavoriteSort favoriteSort)
        updateSort,
  }) {
    return updateSort(user, favoriteSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? load,
    TResult? Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
  }) {
    return updateSort?.call(user, favoriteSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? load,
    TResult Function(EthiscanUser user, FavoriteSort favoriteSort)? updateSort,
    required TResult orElse(),
  }) {
    if (updateSort != null) {
      return updateSort(user, favoriteSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesLoad value) load,
    required TResult Function(_FavoritesUpdateSort value) updateSort,
  }) {
    return updateSort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesLoad value)? load,
    TResult? Function(_FavoritesUpdateSort value)? updateSort,
  }) {
    return updateSort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesLoad value)? load,
    TResult Function(_FavoritesUpdateSort value)? updateSort,
    required TResult orElse(),
  }) {
    if (updateSort != null) {
      return updateSort(this);
    }
    return orElse();
  }
}

abstract class _FavoritesUpdateSort implements FavoritesEvent {
  const factory _FavoritesUpdateSort(
          final EthiscanUser user, final FavoriteSort favoriteSort) =
      _$FavoritesUpdateSortImpl;

  @override
  EthiscanUser get user;
  FavoriteSort get favoriteSort;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesUpdateSortImplCopyWith<_$FavoritesUpdateSortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> favorites) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> favorites)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favorites)? loaded,
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
    required TResult Function(List<Product> favorites) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> favorites)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favorites)? loaded,
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
    required TResult Function(List<Product> favorites) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> favorites)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favorites)? loaded,
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
  $Res call({List<Product> favorites});
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
  }) {
    return _then(_$FavoritesLoadedImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$FavoritesLoadedImpl implements _FavoritesLoaded {
  const _$FavoritesLoadedImpl({required final List<Product> favorites})
      : _favorites = favorites;

  final List<Product> _favorites;
  @override
  List<Product> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

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
    required TResult Function(List<Product> favorites) loaded,
    required TResult Function() error,
  }) {
    return loaded(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> favorites)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favorites)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favorites);
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
  const factory _FavoritesLoaded({required final List<Product> favorites}) =
      _$FavoritesLoadedImpl;

  List<Product> get favorites;
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
    required TResult Function(List<Product> favorites) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> favorites)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> favorites)? loaded,
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
