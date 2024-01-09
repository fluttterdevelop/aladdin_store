import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';



@freezed
class AuthenticatedUserModel with _$AuthenticatedUserModel {
  const factory AuthenticatedUserModel({
    @Default(0) int id,
    @Default('') String email,
    @Default('') String username,
  }) = _AuthenticatedUserModel;
}