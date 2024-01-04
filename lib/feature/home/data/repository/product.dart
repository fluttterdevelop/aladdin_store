import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/exception/exception.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/feature/home/data/data_source/remote_data_source.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:aladdin_store/feature/home/domain/repository/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final _remoteDataSource = HomeRemoteDataSource();

  @override
  Future<Either<ServerFailure, List<ProductEntity>>> getProduct() async {
    try {
      final response = await _remoteDataSource.getProduct();

      return Right(response);
    } on ServerException catch (exception) {
      return Left(
        ServerFailure.fromServerException(exception),
      );
    }
  }
}
