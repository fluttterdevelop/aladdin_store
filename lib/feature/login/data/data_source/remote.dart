import 'package:aladdin_store/core/exception/exception.dart';
import 'package:aladdin_store/feature/login/data/model/auth.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



abstract class AuthenticationRemoteDataSource {
  factory AuthenticationRemoteDataSource() =>
      _AuthenticationRemoteDataSourceImpl();
  Future<AuthenticatedUserModel> getUser(String username, String password);
}

class _AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com'));
  @override
  Future<AuthenticatedUserModel> getUser(
      String username, String password) async {
    try {
      final response = await dio.post('/auth/login', data: {
        'username': username,
        'password': password,
      });

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return const AuthenticatedUserModel();
      } else {
        throw const ServerException(errorMessage: 'try ichidagi error', errorCode: 'try ichidagi error');
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw const ServerException(errorMessage: 'Catch error ichida', errorCode: 'catch error ichida');
    }
  }
}


