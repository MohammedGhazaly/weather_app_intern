import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/weather_model_response.dart';

class CityLocationSection extends StatelessWidget {
  final WeatherModelResponse weatherModelResponse;

  const CityLocationSection({
    super.key,
    required this.weatherModelResponse,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: Colors.white,
          size: 64,
        ),
        SizedBox(
          width: 6,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weatherModelResponse.location?.name ?? "Unknown",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              weatherModelResponse.location?.country ?? "Unknown",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
