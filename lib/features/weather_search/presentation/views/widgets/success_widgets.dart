import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/day.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/weather_model_response.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/city_location_widget.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_card.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_condition_section.dart';

class SuccessWidgets extends StatelessWidget {
  final WeatherModelResponse weatherModelResponse;
  const SuccessWidgets({
    super.key,
    required this.weatherModelResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Spacer(),
        CityLocationSection(weatherModelResponse: weatherModelResponse),
        const Spacer(),
        WeatherConditionSection(weatherModelResponse: weatherModelResponse),
        const Spacer(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  weatherModelResponse.forecast?.forecastday?.length ?? 0,
                  (index) {
            return WeatherCard(
              index: index + 1,
              day: weatherModelResponse.forecast?.forecastday?[index].day ??
                  Day(),
            );
          })

              // [
              //   WeatherCard(),
              //   WeatherCard(),
              //   WeatherCard(),
              // ],
              ),
        ),
        Spacer(),
      ],
    );
  }
}
