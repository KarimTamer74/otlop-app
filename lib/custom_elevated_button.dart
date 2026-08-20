// custom_elevated_button.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
        backgroundColor: AppColors.primayClr,
        minimumSize: Size(double.infinity, 50),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: AppColors.whiteClr,
        ),
      ),
    );
  }
}
