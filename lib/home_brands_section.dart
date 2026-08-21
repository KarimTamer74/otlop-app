// home_brands_section.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/app_colors.dart';
import 'package:otlop_app/app_styles.dart';
import 'package:otlop_app/filter_products_screen.dart';

class HomeBrandsSection extends StatelessWidget {
  const HomeBrandsSection({super.key});
  static List<String> brands = ['Starbucks', 'Costa', 'Cilantro'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Brands", style: AppStyles.style18Bold),
        SizedBox(height: 10),
        SizedBox(
          height: 55,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: brands.length,
            itemBuilder: (context, index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.whiteClr,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FilterProductsScreen(title: brands[index]),
                    ),
                  );
                },
                child: Text(
                  brands[index],
                  style: AppStyles.style14SemiBold.copyWith(
                    color: AppColors.blackClr,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 15);
            },
          ),
        ),
      ],
    );
  }
}
