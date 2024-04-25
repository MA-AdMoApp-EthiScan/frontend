part of 'main_user_bloc.dart';

@freezed
abstract class MainUserEvent with _$MainUserEvent {
  const factory MainUserEvent.connect(Jwt jwt) = _MainUserConnect;

  const factory MainUserEvent.firstLoad() = _MainUserFirstLoad;

  const factory MainUserEvent.reload() = _MainUserReload;

  const factory MainUserEvent.accountCreated({
    required User newUser,
  }) = _MainUserAccountCreated;

  const factory MainUserEvent.autoConnect({
    @Default(Duration.zero) Duration minDelay,
  }) = _MainUserAutoConnect;

  const factory MainUserEvent.disconnect() = _MainUserDisconnect;

  const factory MainUserEvent.reset() = _MainUserReset;

  const factory MainUserEvent.clearData() = _MainUserClearData;
}
