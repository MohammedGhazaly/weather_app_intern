import 'package:flutter/material.dart';
import 'package:weather_app/features/weather_search/data/models/weather_model_response/day.dart';

class WeatherCard extends StatelessWidget {
  final int index;
  final Day day;
  const WeatherCard({super.key, required this.index, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            index.toString(),
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            day.condition!.text.toString(),
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "${day.avgtempC.toString()} celsius ",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
