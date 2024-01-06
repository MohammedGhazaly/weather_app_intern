import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/weather_model_response.dart';
import 'package:weather_app/services/remote/api_constants.dart';
import 'package:weather_app/services/remote/api_services.dart';

class WeatherSearchProvider extends ChangeNotifier {
  String? errorMessage;
  bool isFetching = false;
  WeatherModelResponse? weatherModelResponse;
  bool isDay = true;

  Future<void> getWeatherBySearch({required String cityName}) async {
    try {
      isFetching = true;
      notifyListeners();
      errorMessage = null;
      weatherModelResponse = null;
      final response = await ApiServices.getData(
        path: "${ApiConstants.baseUrl}${ApiConstants.path}",
        queryParameters: {
          "key": ApiConstants.key,
          "q": cityName,
          "days": 7,
          "alerts": "no",
          "aqi": "no"
        },
      );
      weatherModelResponse = WeatherModelResponse.fromJson(response.data);
      if (weatherModelResponse!.current!.isDay == 1) {
        isDay = true;
      } else {
        isDay = false;
      }
      isFetching = false;
      notifyListeners();
    } catch (e) {
      print(e);
      if (e is DioException) {
        if (e.type == DioExceptionType.connectionError) {
          errorMessage = "No internet connection";
        } else if (e.type == DioExceptionType.badResponse) {
          if (e.response!.statusCode == 400 || e.response!.statusCode == 403) {
            print("************");
            print(e.response!.data["error"]["message"]);
            print("************");

            errorMessage = e.response?.data["error"]["message"];
            print("************");
            print(errorMessage);
            print("************");
          }
        }
      } else if (e is SocketException) {
        errorMessage = "No internet connection";
      } else {
        errorMessage = "Something went wrong";
      }
      isFetching = false;
      notifyListeners();
    }
  }
}
