// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUserEventCopyWith<$Res> {
  factory $MainUserEventCopyWith(
          MainUserEvent value, $Res Function(MainUserEvent) then) =
      _$MainUserEventCopyWithImpl<$Res, MainUserEvent>;
}

/// @nodoc
class _$MainUserEventCopyWithImpl<$Res, $Val extends MainUserEvent>
    implements $MainUserEventCopyWith<$Res> {
  _$MainUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainUserConnectImplCopyWith<$Res> {
  factory _$$MainUserConnectImplCopyWith(_$MainUserConnectImpl value,
          $Res Function(_$MainUserConnectImpl) then) =
      __$$MainUserConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$MainUserConnectImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserConnectImpl>
    implements _$$MainUserConnectImplCopyWith<$Res> {
  __$$MainUserConnectImplCopyWithImpl(
      _$MainUserConnectImpl _value, $Res Function(_$MainUserConnectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$MainUserConnectImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainUserConnectImpl implements _MainUserConnect {
  const _$MainUserConnectImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'MainUserEvent.connect(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserConnectImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUserConnectImplCopyWith<_$MainUserConnectImpl> get copyWith =>
      __$$MainUserConnectImplCopyWithImpl<_$MainUserConnectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return connect(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return connect?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _MainUserConnect implements MainUserEvent {
  const factory _MainUserConnect(final String email, final String password) =
      _$MainUserConnectImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$MainUserConnectImplCopyWith<_$MainUserConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainUserFirstLoadImplCopyWith<$Res> {
  factory _$$MainUserFirstLoadImplCopyWith(_$MainUserFirstLoadImpl value,
          $Res Function(_$MainUserFirstLoadImpl) then) =
      __$$MainUserFirstLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserFirstLoadImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserFirstLoadImpl>
    implements _$$MainUserFirstLoadImplCopyWith<$Res> {
  __$$MainUserFirstLoadImplCopyWithImpl(_$MainUserFirstLoadImpl _value,
      $Res Function(_$MainUserFirstLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserFirstLoadImpl implements _MainUserFirstLoad {
  const _$MainUserFirstLoadImpl();

  @override
  String toString() {
    return 'MainUserEvent.firstLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserFirstLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return firstLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return firstLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (firstLoad != null) {
      return firstLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return firstLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return firstLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (firstLoad != null) {
      return firstLoad(this);
    }
    return orElse();
  }
}

abstract class _MainUserFirstLoad implements MainUserEvent {
  const factory _MainUserFirstLoad() = _$MainUserFirstLoadImpl;
}

/// @nodoc
abstract class _$$MainUserReloadImplCopyWith<$Res> {
  factory _$$MainUserReloadImplCopyWith(_$MainUserReloadImpl value,
          $Res Function(_$MainUserReloadImpl) then) =
      __$$MainUserReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserReloadImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserReloadImpl>
    implements _$$MainUserReloadImplCopyWith<$Res> {
  __$$MainUserReloadImplCopyWithImpl(
      _$MainUserReloadImpl _value, $Res Function(_$MainUserReloadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserReloadImpl implements _MainUserReload {
  const _$MainUserReloadImpl();

  @override
  String toString() {
    return 'MainUserEvent.reload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _MainUserReload implements MainUserEvent {
  const factory _MainUserReload() = _$MainUserReloadImpl;
}

/// @nodoc
abstract class _$$MainUserRegisterImplCopyWith<$Res> {
  factory _$$MainUserRegisterImplCopyWith(_$MainUserRegisterImpl value,
          $Res Function(_$MainUserRegisterImpl) then) =
      __$$MainUserRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$MainUserRegisterImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserRegisterImpl>
    implements _$$MainUserRegisterImplCopyWith<$Res> {
  __$$MainUserRegisterImplCopyWithImpl(_$MainUserRegisterImpl _value,
      $Res Function(_$MainUserRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$MainUserRegisterImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainUserRegisterImpl implements _MainUserRegister {
  const _$MainUserRegisterImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'MainUserEvent.register(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserRegisterImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUserRegisterImplCopyWith<_$MainUserRegisterImpl> get copyWith =>
      __$$MainUserRegisterImplCopyWithImpl<_$MainUserRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _MainUserRegister implements MainUserEvent {
  const factory _MainUserRegister(final String email, final String password) =
      _$MainUserRegisterImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$MainUserRegisterImplCopyWith<_$MainUserRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainUserAutoConnectImplCopyWith<$Res> {
  factory _$$MainUserAutoConnectImplCopyWith(_$MainUserAutoConnectImpl value,
          $Res Function(_$MainUserAutoConnectImpl) then) =
      __$$MainUserAutoConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration minDelay});
}

/// @nodoc
class __$$MainUserAutoConnectImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserAutoConnectImpl>
    implements _$$MainUserAutoConnectImplCopyWith<$Res> {
  __$$MainUserAutoConnectImplCopyWithImpl(_$MainUserAutoConnectImpl _value,
      $Res Function(_$MainUserAutoConnectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minDelay = null,
  }) {
    return _then(_$MainUserAutoConnectImpl(
      minDelay: null == minDelay
          ? _value.minDelay
          : minDelay // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$MainUserAutoConnectImpl implements _MainUserAutoConnect {
  const _$MainUserAutoConnectImpl({this.minDelay = Duration.zero});

  @override
  @JsonKey()
  final Duration minDelay;

  @override
  String toString() {
    return 'MainUserEvent.autoConnect(minDelay: $minDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserAutoConnectImpl &&
            (identical(other.minDelay, minDelay) ||
                other.minDelay == minDelay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minDelay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUserAutoConnectImplCopyWith<_$MainUserAutoConnectImpl> get copyWith =>
      __$$MainUserAutoConnectImplCopyWithImpl<_$MainUserAutoConnectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return autoConnect(minDelay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return autoConnect?.call(minDelay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (autoConnect != null) {
      return autoConnect(minDelay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return autoConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return autoConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (autoConnect != null) {
      return autoConnect(this);
    }
    return orElse();
  }
}

abstract class _MainUserAutoConnect implements MainUserEvent {
  const factory _MainUserAutoConnect({final Duration minDelay}) =
      _$MainUserAutoConnectImpl;

  Duration get minDelay;
  @JsonKey(ignore: true)
  _$$MainUserAutoConnectImplCopyWith<_$MainUserAutoConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainUserDisconnectImplCopyWith<$Res> {
  factory _$$MainUserDisconnectImplCopyWith(_$MainUserDisconnectImpl value,
          $Res Function(_$MainUserDisconnectImpl) then) =
      __$$MainUserDisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserDisconnectImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserDisconnectImpl>
    implements _$$MainUserDisconnectImplCopyWith<$Res> {
  __$$MainUserDisconnectImplCopyWithImpl(_$MainUserDisconnectImpl _value,
      $Res Function(_$MainUserDisconnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserDisconnectImpl implements _MainUserDisconnect {
  const _$MainUserDisconnectImpl();

  @override
  String toString() {
    return 'MainUserEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserDisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _MainUserDisconnect implements MainUserEvent {
  const factory _MainUserDisconnect() = _$MainUserDisconnectImpl;
}

/// @nodoc
abstract class _$$MainUserResetImplCopyWith<$Res> {
  factory _$$MainUserResetImplCopyWith(
          _$MainUserResetImpl value, $Res Function(_$MainUserResetImpl) then) =
      __$$MainUserResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserResetImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserResetImpl>
    implements _$$MainUserResetImplCopyWith<$Res> {
  __$$MainUserResetImplCopyWithImpl(
      _$MainUserResetImpl _value, $Res Function(_$MainUserResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserResetImpl implements _MainUserReset {
  const _$MainUserResetImpl();

  @override
  String toString() {
    return 'MainUserEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _MainUserReset implements MainUserEvent {
  const factory _MainUserReset() = _$MainUserResetImpl;
}

/// @nodoc
abstract class _$$MainUserClearDataImplCopyWith<$Res> {
  factory _$$MainUserClearDataImplCopyWith(_$MainUserClearDataImpl value,
          $Res Function(_$MainUserClearDataImpl) then) =
      __$$MainUserClearDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserClearDataImplCopyWithImpl<$Res>
    extends _$MainUserEventCopyWithImpl<$Res, _$MainUserClearDataImpl>
    implements _$$MainUserClearDataImplCopyWith<$Res> {
  __$$MainUserClearDataImplCopyWithImpl(_$MainUserClearDataImpl _value,
      $Res Function(_$MainUserClearDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserClearDataImpl implements _MainUserClearData {
  const _$MainUserClearDataImpl();

  @override
  String toString() {
    return 'MainUserEvent.clearData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserClearDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) connect,
    required TResult Function() firstLoad,
    required TResult Function() reload,
    required TResult Function(String email, String password) register,
    required TResult Function(Duration minDelay) autoConnect,
    required TResult Function() disconnect,
    required TResult Function() reset,
    required TResult Function() clearData,
  }) {
    return clearData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? connect,
    TResult? Function()? firstLoad,
    TResult? Function()? reload,
    TResult? Function(String email, String password)? register,
    TResult? Function(Duration minDelay)? autoConnect,
    TResult? Function()? disconnect,
    TResult? Function()? reset,
    TResult? Function()? clearData,
  }) {
    return clearData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? connect,
    TResult Function()? firstLoad,
    TResult Function()? reload,
    TResult Function(String email, String password)? register,
    TResult Function(Duration minDelay)? autoConnect,
    TResult Function()? disconnect,
    TResult Function()? reset,
    TResult Function()? clearData,
    required TResult orElse(),
  }) {
    if (clearData != null) {
      return clearData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainUserConnect value) connect,
    required TResult Function(_MainUserFirstLoad value) firstLoad,
    required TResult Function(_MainUserReload value) reload,
    required TResult Function(_MainUserRegister value) register,
    required TResult Function(_MainUserAutoConnect value) autoConnect,
    required TResult Function(_MainUserDisconnect value) disconnect,
    required TResult Function(_MainUserReset value) reset,
    required TResult Function(_MainUserClearData value) clearData,
  }) {
    return clearData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainUserConnect value)? connect,
    TResult? Function(_MainUserFirstLoad value)? firstLoad,
    TResult? Function(_MainUserReload value)? reload,
    TResult? Function(_MainUserRegister value)? register,
    TResult? Function(_MainUserAutoConnect value)? autoConnect,
    TResult? Function(_MainUserDisconnect value)? disconnect,
    TResult? Function(_MainUserReset value)? reset,
    TResult? Function(_MainUserClearData value)? clearData,
  }) {
    return clearData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainUserConnect value)? connect,
    TResult Function(_MainUserFirstLoad value)? firstLoad,
    TResult Function(_MainUserReload value)? reload,
    TResult Function(_MainUserRegister value)? register,
    TResult Function(_MainUserAutoConnect value)? autoConnect,
    TResult Function(_MainUserDisconnect value)? disconnect,
    TResult Function(_MainUserReset value)? reset,
    TResult Function(_MainUserClearData value)? clearData,
    required TResult orElse(),
  }) {
    if (clearData != null) {
      return clearData(this);
    }
    return orElse();
  }
}

abstract class _MainUserClearData implements MainUserEvent {
  const factory _MainUserClearData() = _$MainUserClearDataImpl;
}

/// @nodoc
mixin _$MainUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) connected,
    required TResult Function() reloading,
    required TResult Function() disconnected,
    required TResult Function(bool maintenance, bool unknownVersion)
        serviceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? connected,
    TResult? Function()? reloading,
    TResult? Function()? disconnected,
    TResult? Function(bool maintenance, bool unknownVersion)? serviceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? connected,
    TResult Function()? reloading,
    TResult Function()? disconnected,
    TResult Function(bool maintenance, bool unknownVersion)? serviceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserConnected value) connected,
    required TResult Function(_MainUserReloading value) reloading,
    required TResult Function(MainUserDisconnected value) disconnected,
    required TResult Function(MainUserServiceError value) serviceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserConnected value)? connected,
    TResult? Function(_MainUserReloading value)? reloading,
    TResult? Function(MainUserDisconnected value)? disconnected,
    TResult? Function(MainUserServiceError value)? serviceError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserConnected value)? connected,
    TResult Function(_MainUserReloading value)? reloading,
    TResult Function(MainUserDisconnected value)? disconnected,
    TResult Function(MainUserServiceError value)? serviceError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUserStateCopyWith<$Res> {
  factory $MainUserStateCopyWith(
          MainUserState value, $Res Function(MainUserState) then) =
      _$MainUserStateCopyWithImpl<$Res, MainUserState>;
}

/// @nodoc
class _$MainUserStateCopyWithImpl<$Res, $Val extends MainUserState>
    implements $MainUserStateCopyWith<$Res> {
  _$MainUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainUserConnectedImplCopyWith<$Res> {
  factory _$$MainUserConnectedImplCopyWith(_$MainUserConnectedImpl value,
          $Res Function(_$MainUserConnectedImpl) then) =
      __$$MainUserConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EthiscanUser user});
}

/// @nodoc
class __$$MainUserConnectedImplCopyWithImpl<$Res>
    extends _$MainUserStateCopyWithImpl<$Res, _$MainUserConnectedImpl>
    implements _$$MainUserConnectedImplCopyWith<$Res> {
  __$$MainUserConnectedImplCopyWithImpl(_$MainUserConnectedImpl _value,
      $Res Function(_$MainUserConnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$MainUserConnectedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EthiscanUser,
    ));
  }
}

/// @nodoc

class _$MainUserConnectedImpl implements MainUserConnected {
  const _$MainUserConnectedImpl({required this.user});

  @override
  final EthiscanUser user;

  @override
  String toString() {
    return 'MainUserState.connected(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserConnectedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUserConnectedImplCopyWith<_$MainUserConnectedImpl> get copyWith =>
      __$$MainUserConnectedImplCopyWithImpl<_$MainUserConnectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) connected,
    required TResult Function() reloading,
    required TResult Function() disconnected,
    required TResult Function(bool maintenance, bool unknownVersion)
        serviceError,
  }) {
    return connected(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? connected,
    TResult? Function()? reloading,
    TResult? Function()? disconnected,
    TResult? Function(bool maintenance, bool unknownVersion)? serviceError,
  }) {
    return connected?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? connected,
    TResult Function()? reloading,
    TResult Function()? disconnected,
    TResult Function(bool maintenance, bool unknownVersion)? serviceError,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserConnected value) connected,
    required TResult Function(_MainUserReloading value) reloading,
    required TResult Function(MainUserDisconnected value) disconnected,
    required TResult Function(MainUserServiceError value) serviceError,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserConnected value)? connected,
    TResult? Function(_MainUserReloading value)? reloading,
    TResult? Function(MainUserDisconnected value)? disconnected,
    TResult? Function(MainUserServiceError value)? serviceError,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserConnected value)? connected,
    TResult Function(_MainUserReloading value)? reloading,
    TResult Function(MainUserDisconnected value)? disconnected,
    TResult Function(MainUserServiceError value)? serviceError,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class MainUserConnected implements MainUserState {
  const factory MainUserConnected({required final EthiscanUser user}) =
      _$MainUserConnectedImpl;

  EthiscanUser get user;
  @JsonKey(ignore: true)
  _$$MainUserConnectedImplCopyWith<_$MainUserConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainUserReloadingImplCopyWith<$Res> {
  factory _$$MainUserReloadingImplCopyWith(_$MainUserReloadingImpl value,
          $Res Function(_$MainUserReloadingImpl) then) =
      __$$MainUserReloadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserReloadingImplCopyWithImpl<$Res>
    extends _$MainUserStateCopyWithImpl<$Res, _$MainUserReloadingImpl>
    implements _$$MainUserReloadingImplCopyWith<$Res> {
  __$$MainUserReloadingImplCopyWithImpl(_$MainUserReloadingImpl _value,
      $Res Function(_$MainUserReloadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserReloadingImpl implements _MainUserReloading {
  const _$MainUserReloadingImpl();

  @override
  String toString() {
    return 'MainUserState.reloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainUserReloadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) connected,
    required TResult Function() reloading,
    required TResult Function() disconnected,
    required TResult Function(bool maintenance, bool unknownVersion)
        serviceError,
  }) {
    return reloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? connected,
    TResult? Function()? reloading,
    TResult? Function()? disconnected,
    TResult? Function(bool maintenance, bool unknownVersion)? serviceError,
  }) {
    return reloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? connected,
    TResult Function()? reloading,
    TResult Function()? disconnected,
    TResult Function(bool maintenance, bool unknownVersion)? serviceError,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserConnected value) connected,
    required TResult Function(_MainUserReloading value) reloading,
    required TResult Function(MainUserDisconnected value) disconnected,
    required TResult Function(MainUserServiceError value) serviceError,
  }) {
    return reloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserConnected value)? connected,
    TResult? Function(_MainUserReloading value)? reloading,
    TResult? Function(MainUserDisconnected value)? disconnected,
    TResult? Function(MainUserServiceError value)? serviceError,
  }) {
    return reloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserConnected value)? connected,
    TResult Function(_MainUserReloading value)? reloading,
    TResult Function(MainUserDisconnected value)? disconnected,
    TResult Function(MainUserServiceError value)? serviceError,
    required TResult orElse(),
  }) {
    if (reloading != null) {
      return reloading(this);
    }
    return orElse();
  }
}

abstract class _MainUserReloading implements MainUserState {
  const factory _MainUserReloading() = _$MainUserReloadingImpl;
}

/// @nodoc
abstract class _$$MainUserDisconnectedImplCopyWith<$Res> {
  factory _$$MainUserDisconnectedImplCopyWith(_$MainUserDisconnectedImpl value,
          $Res Function(_$MainUserDisconnectedImpl) then) =
      __$$MainUserDisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainUserDisconnectedImplCopyWithImpl<$Res>
    extends _$MainUserStateCopyWithImpl<$Res, _$MainUserDisconnectedImpl>
    implements _$$MainUserDisconnectedImplCopyWith<$Res> {
  __$$MainUserDisconnectedImplCopyWithImpl(_$MainUserDisconnectedImpl _value,
      $Res Function(_$MainUserDisconnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainUserDisconnectedImpl implements MainUserDisconnected {
  const _$MainUserDisconnectedImpl();

  @override
  String toString() {
    return 'MainUserState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserDisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) connected,
    required TResult Function() reloading,
    required TResult Function() disconnected,
    required TResult Function(bool maintenance, bool unknownVersion)
        serviceError,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? connected,
    TResult? Function()? reloading,
    TResult? Function()? disconnected,
    TResult? Function(bool maintenance, bool unknownVersion)? serviceError,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? connected,
    TResult Function()? reloading,
    TResult Function()? disconnected,
    TResult Function(bool maintenance, bool unknownVersion)? serviceError,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserConnected value) connected,
    required TResult Function(_MainUserReloading value) reloading,
    required TResult Function(MainUserDisconnected value) disconnected,
    required TResult Function(MainUserServiceError value) serviceError,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserConnected value)? connected,
    TResult? Function(_MainUserReloading value)? reloading,
    TResult? Function(MainUserDisconnected value)? disconnected,
    TResult? Function(MainUserServiceError value)? serviceError,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserConnected value)? connected,
    TResult Function(_MainUserReloading value)? reloading,
    TResult Function(MainUserDisconnected value)? disconnected,
    TResult Function(MainUserServiceError value)? serviceError,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class MainUserDisconnected implements MainUserState {
  const factory MainUserDisconnected() = _$MainUserDisconnectedImpl;
}

/// @nodoc
abstract class _$$MainUserServiceErrorImplCopyWith<$Res> {
  factory _$$MainUserServiceErrorImplCopyWith(_$MainUserServiceErrorImpl value,
          $Res Function(_$MainUserServiceErrorImpl) then) =
      __$$MainUserServiceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool maintenance, bool unknownVersion});
}

/// @nodoc
class __$$MainUserServiceErrorImplCopyWithImpl<$Res>
    extends _$MainUserStateCopyWithImpl<$Res, _$MainUserServiceErrorImpl>
    implements _$$MainUserServiceErrorImplCopyWith<$Res> {
  __$$MainUserServiceErrorImplCopyWithImpl(_$MainUserServiceErrorImpl _value,
      $Res Function(_$MainUserServiceErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maintenance = null,
    Object? unknownVersion = null,
  }) {
    return _then(_$MainUserServiceErrorImpl(
      maintenance: null == maintenance
          ? _value.maintenance
          : maintenance // ignore: cast_nullable_to_non_nullable
              as bool,
      unknownVersion: null == unknownVersion
          ? _value.unknownVersion
          : unknownVersion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainUserServiceErrorImpl implements MainUserServiceError {
  const _$MainUserServiceErrorImpl(
      {required this.maintenance, required this.unknownVersion});

  @override
  final bool maintenance;
  @override
  final bool unknownVersion;

  @override
  String toString() {
    return 'MainUserState.serviceError(maintenance: $maintenance, unknownVersion: $unknownVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainUserServiceErrorImpl &&
            (identical(other.maintenance, maintenance) ||
                other.maintenance == maintenance) &&
            (identical(other.unknownVersion, unknownVersion) ||
                other.unknownVersion == unknownVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maintenance, unknownVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainUserServiceErrorImplCopyWith<_$MainUserServiceErrorImpl>
      get copyWith =>
          __$$MainUserServiceErrorImplCopyWithImpl<_$MainUserServiceErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EthiscanUser user) connected,
    required TResult Function() reloading,
    required TResult Function() disconnected,
    required TResult Function(bool maintenance, bool unknownVersion)
        serviceError,
  }) {
    return serviceError(maintenance, unknownVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EthiscanUser user)? connected,
    TResult? Function()? reloading,
    TResult? Function()? disconnected,
    TResult? Function(bool maintenance, bool unknownVersion)? serviceError,
  }) {
    return serviceError?.call(maintenance, unknownVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EthiscanUser user)? connected,
    TResult Function()? reloading,
    TResult Function()? disconnected,
    TResult Function(bool maintenance, bool unknownVersion)? serviceError,
    required TResult orElse(),
  }) {
    if (serviceError != null) {
      return serviceError(maintenance, unknownVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainUserConnected value) connected,
    required TResult Function(_MainUserReloading value) reloading,
    required TResult Function(MainUserDisconnected value) disconnected,
    required TResult Function(MainUserServiceError value) serviceError,
  }) {
    return serviceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainUserConnected value)? connected,
    TResult? Function(_MainUserReloading value)? reloading,
    TResult? Function(MainUserDisconnected value)? disconnected,
    TResult? Function(MainUserServiceError value)? serviceError,
  }) {
    return serviceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainUserConnected value)? connected,
    TResult Function(_MainUserReloading value)? reloading,
    TResult Function(MainUserDisconnected value)? disconnected,
    TResult Function(MainUserServiceError value)? serviceError,
    required TResult orElse(),
  }) {
    if (serviceError != null) {
      return serviceError(this);
    }
    return orElse();
  }
}

abstract class MainUserServiceError implements MainUserState {
  const factory MainUserServiceError(
      {required final bool maintenance,
      required final bool unknownVersion}) = _$MainUserServiceErrorImpl;

  bool get maintenance;
  bool get unknownVersion;
  @JsonKey(ignore: true)
  _$$MainUserServiceErrorImplCopyWith<_$MainUserServiceErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
