import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
