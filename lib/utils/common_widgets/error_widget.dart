import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Try again Later.",
      style: TextStyle(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
