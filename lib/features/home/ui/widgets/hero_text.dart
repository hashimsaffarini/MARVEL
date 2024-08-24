import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/core/theming/app_colors.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Héroes',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 24.sp,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w200,
          ),
        ),
        const Spacer(),
        Text(
          'Ver todo',
          style: TextStyle(
            color: AppColors.fontColorSecondary.withOpacity(0.9),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        horizontalSpace(16)
      ],
    );
  }
}
