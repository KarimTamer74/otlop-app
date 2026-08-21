// home_categories_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otlop_app/app_colors.dart';
import 'package:otlop_app/app_styles.dart';
import 'package:otlop_app/custom_text_button.dart';

class HomeCategoriesSection extends StatelessWidget {
  const HomeCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Categories", style: AppStyles.style18Bold),
            CustomTextButton(
              text: 'See all',
              onPressed: () {},
              textClr: AppColors.primayClr,
            ),
          ],
        ),

        SizedBox(
          height: 120,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 15),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.whiteClr,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/latte_icon.svg',
                      width: 30,
                      height: 40,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Latte",
                    style: AppStyles.style12.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
