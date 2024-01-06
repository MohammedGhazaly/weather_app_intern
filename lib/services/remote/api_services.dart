import 'package:dio/dio.dart';

class ApiServices {
  static final Dio dio = Dio()
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
      request: true,
      requestBody: true,
    ));

  static Future<Response<dynamic>> getData(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    final response = await dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response;
  }
}
