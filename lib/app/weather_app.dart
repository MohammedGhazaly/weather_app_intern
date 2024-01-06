import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/weather_search_view.dart';
import 'package:weather_app/utils/app_theme.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const WeatherSearchView(),
        title: 'Weather App',
        theme: AppTheme.lightTheme);
  }
}
