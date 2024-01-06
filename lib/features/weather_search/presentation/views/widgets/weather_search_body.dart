import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/features/weather_search/presentation/provider/weather_search_provider.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/custom_search_field.dart';
import 'package:weather_app/features/weather_search/presentation/views/widgets/success_widgets.dart';
import 'package:weather_app/utils/common_widgets/custom_loading_indicator.dart';
import 'package:weather_app/utils/common_widgets/error_widget.dart';

class WeatherSearchBody extends StatefulWidget {
  const WeatherSearchBody({super.key});

  @override
  State<WeatherSearchBody> createState() => _WeatherSearchBodyState();
}

class _WeatherSearchBodyState extends State<WeatherSearchBody> {
  late TextEditingController searchController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchProvider =
        Provider.of<WeatherSearchProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomSearchField(
            suffixIcon: InkWell(
              onTap: () {
                searchProvider.getWeatherBySearch(
                    cityName: searchController.text);
              },
              child: Icon(
                Icons.search,
              ),
            ),
            textEditingController: searchController,
            onSubmittedFunction: (value) {
              searchProvider.getWeatherBySearch(cityName: value);
            },
          ),
          // CustomLoadingIndicator()
          Consumer<WeatherSearchProvider>(
              builder: (context, weatherProvider, child) {
            if (weatherProvider.isFetching) {
              return CustomLoadingIndicator();
            } else if (weatherProvider.errorMessage != null) {
              return CustomErrorWidget(
                  errorMessage: weatherProvider.errorMessage!);
            } else if (weatherProvider.weatherModelResponse != null) {
              return Expanded(
                child: SuccessWidgets(
                    weatherModelResponse:
                        weatherProvider.weatherModelResponse!),
              );
            } else {
              return SizedBox();
            }
          }),
        ],
      ),
    );
  }
}
