// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticationStatus,
    required TResult Function(String username, String password,
            VoidCallback onSuccess, ValueChanged<String> onFailure)
        login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAuthenticationStatus,
    TResult? Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticationStatus,
    TResult Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStatus value)
        getAuthenticationStatus,
    required TResult Function(_AuthenticationLoginEvent value) login,
    required TResult Function(_AuthenticationLogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult? Function(_AuthenticationLoginEvent value)? login,
    TResult? Function(_AuthenticationLogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult Function(_AuthenticationLoginEvent value)? login,
    TResult Function(_AuthenticationLogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAuthenticationStatusImplCopyWith<$Res> {
  factory _$$GetAuthenticationStatusImplCopyWith(
          _$GetAuthenticationStatusImpl value,
          $Res Function(_$GetAuthenticationStatusImpl) then) =
      __$$GetAuthenticationStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAuthenticationStatusImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$GetAuthenticationStatusImpl>
    implements _$$GetAuthenticationStatusImplCopyWith<$Res> {
  __$$GetAuthenticationStatusImplCopyWithImpl(
      _$GetAuthenticationStatusImpl _value,
      $Res Function(_$GetAuthenticationStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAuthenticationStatusImpl implements _GetAuthenticationStatus {
  const _$GetAuthenticationStatusImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.getAuthenticationStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAuthenticationStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticationStatus,
    required TResult Function(String username, String password,
            VoidCallback onSuccess, ValueChanged<String> onFailure)
        login,
    required TResult Function() logout,
  }) {
    return getAuthenticationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAuthenticationStatus,
    TResult? Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult? Function()? logout,
  }) {
    return getAuthenticationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticationStatus,
    TResult Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getAuthenticationStatus != null) {
      return getAuthenticationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStatus value)
        getAuthenticationStatus,
    required TResult Function(_AuthenticationLoginEvent value) login,
    required TResult Function(_AuthenticationLogoutEvent value) logout,
  }) {
    return getAuthenticationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult? Function(_AuthenticationLoginEvent value)? login,
    TResult? Function(_AuthenticationLogoutEvent value)? logout,
  }) {
    return getAuthenticationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult Function(_AuthenticationLoginEvent value)? login,
    TResult Function(_AuthenticationLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (getAuthenticationStatus != null) {
      return getAuthenticationStatus(this);
    }
    return orElse();
  }
}

abstract class _GetAuthenticationStatus implements AuthenticationEvent {
  const factory _GetAuthenticationStatus() = _$GetAuthenticationStatusImpl;
}

/// @nodoc
abstract class _$$AuthenticationLoginEventImplCopyWith<$Res> {
  factory _$$AuthenticationLoginEventImplCopyWith(
          _$AuthenticationLoginEventImpl value,
          $Res Function(_$AuthenticationLoginEventImpl) then) =
      __$$AuthenticationLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username,
      String password,
      VoidCallback onSuccess,
      ValueChanged<String> onFailure});
}

/// @nodoc
class __$$AuthenticationLoginEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationLoginEventImpl>
    implements _$$AuthenticationLoginEventImplCopyWith<$Res> {
  __$$AuthenticationLoginEventImplCopyWithImpl(
      _$AuthenticationLoginEventImpl _value,
      $Res Function(_$AuthenticationLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? onSuccess = null,
    Object? onFailure = null,
  }) {
    return _then(_$AuthenticationLoginEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onFailure: null == onFailure
          ? _value.onFailure
          : onFailure // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$AuthenticationLoginEventImpl implements _AuthenticationLoginEvent {
  const _$AuthenticationLoginEventImpl(
      {required this.username,
      required this.password,
      required this.onSuccess,
      required this.onFailure});

  @override
  final String username;
  @override
  final String password;
  @override
  final VoidCallback onSuccess;
  @override
  final ValueChanged<String> onFailure;

  @override
  String toString() {
    return 'AuthenticationEvent.login(username: $username, password: $password, onSuccess: $onSuccess, onFailure: $onFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLoginEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onFailure, onFailure) ||
                other.onFailure == onFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, onSuccess, onFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationLoginEventImplCopyWith<_$AuthenticationLoginEventImpl>
      get copyWith => __$$AuthenticationLoginEventImplCopyWithImpl<
          _$AuthenticationLoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticationStatus,
    required TResult Function(String username, String password,
            VoidCallback onSuccess, ValueChanged<String> onFailure)
        login,
    required TResult Function() logout,
  }) {
    return login(username, password, onSuccess, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAuthenticationStatus,
    TResult? Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult? Function()? logout,
  }) {
    return login?.call(username, password, onSuccess, onFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticationStatus,
    TResult Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password, onSuccess, onFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStatus value)
        getAuthenticationStatus,
    required TResult Function(_AuthenticationLoginEvent value) login,
    required TResult Function(_AuthenticationLogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult? Function(_AuthenticationLoginEvent value)? login,
    TResult? Function(_AuthenticationLogoutEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult Function(_AuthenticationLoginEvent value)? login,
    TResult Function(_AuthenticationLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLoginEvent implements AuthenticationEvent {
  const factory _AuthenticationLoginEvent(
          {required final String username,
          required final String password,
          required final VoidCallback onSuccess,
          required final ValueChanged<String> onFailure}) =
      _$AuthenticationLoginEventImpl;

  String get username;
  String get password;
  VoidCallback get onSuccess;
  ValueChanged<String> get onFailure;
  @JsonKey(ignore: true)
  _$$AuthenticationLoginEventImplCopyWith<_$AuthenticationLoginEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationLogoutEventImplCopyWith<$Res> {
  factory _$$AuthenticationLogoutEventImplCopyWith(
          _$AuthenticationLogoutEventImpl value,
          $Res Function(_$AuthenticationLogoutEventImpl) then) =
      __$$AuthenticationLogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationLogoutEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$AuthenticationLogoutEventImpl>
    implements _$$AuthenticationLogoutEventImplCopyWith<$Res> {
  __$$AuthenticationLogoutEventImplCopyWithImpl(
      _$AuthenticationLogoutEventImpl _value,
      $Res Function(_$AuthenticationLogoutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationLogoutEventImpl implements _AuthenticationLogoutEvent {
  const _$AuthenticationLogoutEventImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationLogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAuthenticationStatus,
    required TResult Function(String username, String password,
            VoidCallback onSuccess, ValueChanged<String> onFailure)
        login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAuthenticationStatus,
    TResult? Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAuthenticationStatus,
    TResult Function(String username, String password, VoidCallback onSuccess,
            ValueChanged<String> onFailure)?
        login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAuthenticationStatus value)
        getAuthenticationStatus,
    required TResult Function(_AuthenticationLoginEvent value) login,
    required TResult Function(_AuthenticationLogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult? Function(_AuthenticationLoginEvent value)? login,
    TResult? Function(_AuthenticationLogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAuthenticationStatus value)? getAuthenticationStatus,
    TResult Function(_AuthenticationLoginEvent value)? login,
    TResult Function(_AuthenticationLogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLogoutEvent implements AuthenticationEvent {
  const factory _AuthenticationLogoutEvent() = _$AuthenticationLogoutEventImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  AuthenticatedUserEntity get authenticatedUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {AuthenticationStatus authenticationStatus,
      AuthenticatedUserEntity authenticatedUser});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
    Object? authenticatedUser = null,
  }) {
    return _then(_value.copyWith(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      authenticatedUser: null == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUserEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationStatus authenticationStatus,
      AuthenticatedUserEntity authenticatedUser});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationStatus = null,
    Object? authenticatedUser = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      authenticationStatus: null == authenticationStatus
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      authenticatedUser: null == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as AuthenticatedUserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {this.authenticationStatus = AuthenticationStatus.unknown,
      this.authenticatedUser = const AuthenticatedUserEntity.empty()});

  @override
  @JsonKey()
  final AuthenticationStatus authenticationStatus;
  @override
  @JsonKey()
  final AuthenticatedUserEntity authenticatedUser;

  @override
  String toString() {
    return 'AuthenticationState(authenticationStatus: $authenticationStatus, authenticatedUser: $authenticatedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                other.authenticationStatus == authenticationStatus) &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                other.authenticatedUser == authenticatedUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticationStatus, authenticatedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
          {final AuthenticationStatus authenticationStatus,
          final AuthenticatedUserEntity authenticatedUser}) =
      _$AuthenticationStateImpl;

  @override
  AuthenticationStatus get authenticationStatus;
  @override
  AuthenticatedUserEntity get authenticatedUser;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
