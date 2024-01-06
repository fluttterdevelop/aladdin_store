import 'package:aladdin_store/core/either/either.dart';
import 'package:aladdin_store/core/exception/exception.dart';
import 'package:aladdin_store/core/extention/model.dart';
import 'package:aladdin_store/core/failure/failure.dart';
import 'package:aladdin_store/feature/home/data/data_source/remote_data_source.dart';
import 'package:aladdin_store/feature/home/domain/entity/product.dart';
import 'package:aladdin_store/feature/home/domain/repository/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final HomeRemoteDataSource _remoteDataSource;

  const ProductRepositoryImpl(HomeRemoteDataSource remoteDataSource)
      : _remoteDataSource = remoteDataSource;


      
  @override
  Future<Either<ServerFailure, List<ProductEntity>>> getProduct() async {
    try {
      final response = await _remoteDataSource.getProduct();

      return Right(response.map((e) => e.toEntity).toList());
    } on ServerException catch (exception) {
      return Left(
        ServerFailure.fromServerException(exception),
      );
    }
  }
}
