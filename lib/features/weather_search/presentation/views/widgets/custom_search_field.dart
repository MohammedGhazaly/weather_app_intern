import 'package:flutter/material.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_strings.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {},
          child: Icon(
            Icons.search,
          ),
        ),
        hintText: AppStrings.searchBarHintText,
        filled: true,
        fillColor: AppColors.textColor.withOpacity(0.5),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }
}
