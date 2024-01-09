part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.getAuthenticationStatus() =
      _GetAuthenticationStatus;
  const factory AuthenticationEvent.login({
    required String username,
    required String password,
    required VoidCallback onSuccess,
    required ValueChanged<String> onFailure,
  }) = _AuthenticationLoginEvent;

  const factory AuthenticationEvent.logout() = _AuthenticationLogoutEvent;
}



