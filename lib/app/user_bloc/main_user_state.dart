part of 'main_user_bloc.dart';

@freezed
abstract class MainUserState with _$MainUserState {
  const factory MainUserState.connected({
    required EthiscanUser user,
  }) = MainUserConnected;

  const factory MainUserState.reloading() = _MainUserReloading;

  const factory MainUserState.disconnected() = MainUserDisconnected;

  const factory MainUserState.serviceError({
    required bool maintenance,
    required bool unknownVersion,
  }) = MainUserServiceError;

  factory MainUserState.initial() => const MainUserState.reloading();
}
