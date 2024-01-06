import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/city_location_widget.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_search_field.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_condition_section.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_strings.dart';

class WeatherSearchBody extends StatelessWidget {
  const WeatherSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchField(),
          CityLocationSection(),
          WeatherConditionSection(),
        ],
      ),
    );
  }
}
