import 'package:flutter/material.dart';
import 'package:weather_app/utils/app_colors.dart';
import 'package:weather_app/utils/app_strings.dart';

class CustomSearchField extends StatelessWidget {
  final Function(String value)? onSubmittedFunction;
  final TextEditingController? textEditingController;
  final Widget? suffixIcon;
  const CustomSearchField({
    super.key,
    this.onSubmittedFunction,
    this.textEditingController,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onSubmitted: (value) {
        if (onSubmittedFunction != null) {
          onSubmittedFunction!(value);
        }
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
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
