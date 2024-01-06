import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/city_location_widget.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_search_field.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_card.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/weather_condition_section.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_strings.dart';
import 'package:weather_app/utils/common_widgets/error_widget.dart';

class WeatherSearchBody extends StatelessWidget {
  const WeatherSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomSearchField(),
          Expanded(
            child: SuccessWidgets(),
          ),
        ],
      ),
    );
  }
}

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
