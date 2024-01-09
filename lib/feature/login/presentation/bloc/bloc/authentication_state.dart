part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  unknown,
  unauthenticated,
  authenticated,
}

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(AuthenticationStatus.unknown)
    AuthenticationStatus authenticationStatus,
    @Default(AuthenticatedUserEntity.empty())
    AuthenticatedUserEntity authenticatedUser,
  }) = _AuthenticationState;
}

class AuthenticatedUserEntity {
  final int id;
  final String username;
  final String email;
  final String firstname;
  final String lastname;

 const  AuthenticatedUserEntity({
    required this.id,
    required this.username,
    required this.email,
    required this.firstname,
    required this.lastname,
  });

  const AuthenticatedUserEntity.empty()
      : this(id: 0, email: '', username: '', firstname: '', lastname: '');
}

