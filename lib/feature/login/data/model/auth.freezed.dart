// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticatedUserModel {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticatedUserModelCopyWith<AuthenticatedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserModelCopyWith<$Res> {
  factory $AuthenticatedUserModelCopyWith(AuthenticatedUserModel value,
          $Res Function(AuthenticatedUserModel) then) =
      _$AuthenticatedUserModelCopyWithImpl<$Res, AuthenticatedUserModel>;
  @useResult
  $Res call({int id, String email, String username});
}

/// @nodoc
class _$AuthenticatedUserModelCopyWithImpl<$Res,
        $Val extends AuthenticatedUserModel>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  _$AuthenticatedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedUserModelImplCopyWith<$Res>
    implements $AuthenticatedUserModelCopyWith<$Res> {
  factory _$$AuthenticatedUserModelImplCopyWith(
          _$AuthenticatedUserModelImpl value,
          $Res Function(_$AuthenticatedUserModelImpl) then) =
      __$$AuthenticatedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email, String username});
}

/// @nodoc
class __$$AuthenticatedUserModelImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserModelCopyWithImpl<$Res,
        _$AuthenticatedUserModelImpl>
    implements _$$AuthenticatedUserModelImplCopyWith<$Res> {
  __$$AuthenticatedUserModelImplCopyWithImpl(
      _$AuthenticatedUserModelImpl _value,
      $Res Function(_$AuthenticatedUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
  }) {
    return _then(_$AuthenticatedUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticatedUserModelImpl implements _AuthenticatedUserModel {
  const _$AuthenticatedUserModelImpl(
      {this.id = 0, this.email = '', this.username = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String username;

  @override
  String toString() {
    return 'AuthenticatedUserModel(id: $id, email: $email, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => __$$AuthenticatedUserModelImplCopyWithImpl<
          _$AuthenticatedUserModelImpl>(this, _$identity);
}

abstract class _AuthenticatedUserModel implements AuthenticatedUserModel {
  const factory _AuthenticatedUserModel(
      {final int id,
      final String email,
      final String username}) = _$AuthenticatedUserModelImpl;

  @override
  int get id;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedUserModelImplCopyWith<_$AuthenticatedUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
