import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/city_location_widget.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_card.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_condition_section.dart';

class SuccessWidgets extends StatelessWidget {
  const SuccessWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        CityLocationSection(),
        Spacer(),
        WeatherConditionSection(),
        Spacer(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              WeatherCard(),
              WeatherCard(),
              WeatherCard(),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
