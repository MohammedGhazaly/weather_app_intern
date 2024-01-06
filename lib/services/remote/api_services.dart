import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();

  Future<Response<dynamic>> getData({required String path}) async {
    final response = await dio.get(path);
    return response;
  }
}
