part of 'main_user_bloc.dart';

@freezed
abstract class MainUserEvent with _$MainUserEvent {
  const factory MainUserEvent.connect(String email, String password) =
      _MainUserConnect;

  const factory MainUserEvent.goRegister() =
      _MainUserGoRegister;

  const factory MainUserEvent.goLogin() =
      _MainUserGoLogin;

  const factory MainUserEvent.register(String email, String password) =
      _MainUserRegister;

  const factory MainUserEvent.autoConnect({
    @Default(Duration.zero) Duration minDelay,
  }) = _MainUserAutoConnect;

  const factory MainUserEvent.disconnect() = _MainUserDisconnect;
}
