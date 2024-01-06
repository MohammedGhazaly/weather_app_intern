import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/city_location_widget.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_search_field.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/success_widgets.dart';
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
          // CustomLoadingIndicator()
          Expanded(
            child: SuccessWidgets(),
          ),
        ],
      ),
    );
  }
}
