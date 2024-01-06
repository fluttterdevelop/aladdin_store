import 'package:aladdin_store/core/failure/failure.dart';

import '../either/either.dart';

abstract class UseCase<Type, Params> {
  const UseCase();
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
