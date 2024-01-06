import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();

  Future<Response<dynamic>> getData(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    final response = await dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response;
  }
}
