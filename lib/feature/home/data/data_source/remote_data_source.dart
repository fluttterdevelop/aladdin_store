import 'package:aladdin_store/feature/home/data/models/product.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductModel>> getProduct();

  factory HomeRemoteDataSource() => _HomeRemoteDataSourceImpl();
}

class _HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com'));

  @override
  Future<List<ProductModel>> getProduct() async {
    try {
      final response = await dio.get('/products');

      

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return (response.data as List)
            .map((json) => ProductModel.fromJson(json))
            .toList();
      } else {
        throw 'response Failured';
      }
    } catch (e) {
      throw 'nimadir xato bo\'ldi ';
    }
  }
}
