import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';

abstract class ProductRepository {
  Future<Either<ServerFailure, List<ProductEntity>>> getProduct();
}
