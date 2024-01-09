import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/exception/exception.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/feature/login/data/data_source/remote.dart';
import 'package:aladdin_store/feature/login/domain/repository/auth.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final dataSource = AuthenticationRemoteDataSource();

  @override
  Future<Either<ServerFailure, AuthenticatedUserEntity>> getUser(
      String username, String password) async {
    try {
      await dataSource.getUser(username, password);

      return Right(const AuthenticatedUserEntity.empty());
    } on ServerException catch (_) {
      return Left(ServerFailure(failureMessage: 'repository ichidagi Left serverfailured', failureCode: 'repository ichidagi Left serverfailured'));
    }
  }
}
