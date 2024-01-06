import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/services/remote/api_constants.dart';
import 'package:weather_app/services/remote/api_services.dart';

class WeatherSearchProvider extends ChangeNotifier {
  String? errorMessage;
  bool isFetching = true;
  void getWeatherBySearch({required String cityName}) {
    try {
      isFetching = true;
      notifyListeners();
      final response = ApiServices.getData(
        path: "${ApiConstants.baseUrl}${ApiConstants.path}",
        queryParameters: {
          "key": ApiConstants.key,
          "q": cityName,
          "days": 7,
          "alerts": "no",
          "aqi": "no"
        },
      );
      isFetching = false;
      notifyListeners();
    } catch (e) {
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          errorMessage = "No internet connection";
        } else if (e.type == DioExceptionType.badResponse) {
          if (e.response!.statusCode == 400 || e.response!.statusCode == 403) {
            errorMessage =
                e.response?.data["error"]["message"] ?? "Something went wrong.";
          }
        }
      }
      if (e is SocketException) {
        errorMessage = "No internet connection";
      } else {
        errorMessage = "Something went wrong";
      }
      isFetching = false;
      notifyListeners();
    }
  }
}
