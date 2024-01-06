import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_search_field.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/success_widgets.dart';

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
          // CustomLoadingIndicator()
          Expanded(
            child: SuccessWidgets(),
          ),
        ],
      ),
    );
  }
}
