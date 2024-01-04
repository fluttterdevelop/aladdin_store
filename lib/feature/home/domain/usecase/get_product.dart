import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/core/usecase/usecase.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:aladdin_store/feature/home/domain/repository/product.dart';

class GetProductUseCase implements UseCase<List<ProductEntity>, NoParams> {
  final ProductRepository _repository;

  GetProductUseCase(ProductRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) {
    return _repository.getProduct();
  }
}
