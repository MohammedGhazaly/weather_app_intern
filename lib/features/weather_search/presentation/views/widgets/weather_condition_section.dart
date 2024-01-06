import 'package:flutter/material.dart';

class WeatherConditionSection extends StatelessWidget {
  const WeatherConditionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "Mist",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "23.0",
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
        Icon(
          Icons.sunny,
          color: Colors.white,
          size: 64,
        )
      ],
    );
  }
}
