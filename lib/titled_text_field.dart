// titled_text_field.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/app_colors.dart';

class TitledTextField extends StatelessWidget {
  const TitledTextField({
    super.key,
    required this.title,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
  });
  final String title;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.primayClr,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.greyClr, fontSize: 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.primayClr, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
