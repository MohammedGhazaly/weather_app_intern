import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/app/weather_app.dart';
import 'package:weather_app/features/weather_search/presentation/provider/weather_search_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return WeatherSearchProvider();
      },
      child: const WeatherApp(),
    ),
  );
}
