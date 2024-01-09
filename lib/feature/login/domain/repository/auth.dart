import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';

abstract class AuthenticationRepository {
  Future<Either<ServerFailure, AuthenticatedUserEntity>> getUser(String username, String password);
}