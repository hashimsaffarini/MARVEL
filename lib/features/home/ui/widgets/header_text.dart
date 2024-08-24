import 'package:flutter/material.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/core/theming/app_colors.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Good Morning to Marvel Heroes',
          style: TextStyle(
            color: AppColors.fontColorSecondary,
            fontSize: 16,
          ),
        ),
        verticalSpace(4),
        const Text(
          'Choose Your Character',
          style: TextStyle(
            color: AppColors.fontColorPrimary,
            fontSize: 48,
            fontFamily: 'Anton',
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
