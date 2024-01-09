import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/core/usecase/usecase.dart';
import 'package:aladdin_store/feature/login/data/repository/auth.dart';
import 'package:aladdin_store/feature/login/presentation/bloc/bloc/authentication_bloc.dart';

class GetUserUseCase
    implements UseCase<AuthenticatedUserEntity, (String, String)> {
  final repository = AuthenticationRepositoryImpl();
  @override
  Future<Either<Failure, AuthenticatedUserEntity>> call(
      (String, String) params) {
    return repository.getUser(params.$1, params.$2);
  }
}