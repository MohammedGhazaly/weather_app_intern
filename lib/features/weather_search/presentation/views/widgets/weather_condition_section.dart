import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/weather_model_response.dart';

class WeatherConditionSection extends StatelessWidget {
  final WeatherModelResponse weatherModelResponse;

  const WeatherConditionSection(
      {super.key, required this.weatherModelResponse});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              weatherModelResponse.current?.condition?.text ?? "Unknown",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "${weatherModelResponse.current?.tempC.toString()} C",
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 12,
        ),
        weatherModelResponse.current?.isDay == 1
            ? Icon(
                Icons.sunny,
                color: Colors.white,
                size: 64,
              )
            : Icon(
                Icons.dark_mode,
                color: Colors.white,
                size: 64,
              ),
      ],
    );
  }
}
