// home_products_section.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/app_colors.dart';
import 'package:otlop_app/app_styles.dart';

class HomeProductsSection extends StatelessWidget {
  const HomeProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .7,
      ),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        'assets/images/frappuccino.png',

                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Starbucks',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,

                          style: AppStyles.style12.copyWith(
                            color: AppColors.primayClr,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Double Caramel Frappuccino',
                          style: AppStyles.style14Bold,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '200',
                                    style: AppStyles.style17Bold.copyWith(
                                      color: AppColors.blackClr,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  EGP',
                                    style: AppStyles.style10SemiBold.copyWith(
                                      color: AppColors.greyClr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: AppColors.primayClr,
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.add, color: AppColors.whiteClr),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              left: 15,
              top: 15,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.blackClr.withValues(alpha: .4),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  'Frappuccino',
                  style: AppStyles.style12.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.whiteClr,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
