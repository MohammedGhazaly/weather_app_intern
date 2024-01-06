import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_search_body.dart';
import 'package:weather_app/utils/app_strings.dart';

class WeatherSearchView extends StatelessWidget {
  const WeatherSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.appBarText),
      ),
      body: const WeatherSearchBody(),
    );
  }
}
