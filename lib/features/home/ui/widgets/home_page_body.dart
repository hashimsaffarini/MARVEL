import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/features/home/ui/widgets/header_text.dart';
import 'package:marvel_app/features/home/ui/widgets/hero_text.dart';
import 'package:marvel_app/features/home/ui/widgets/home_bloc_builder.dart';
import 'package:marvel_app/features/home/ui/widgets/list_view_categories.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(24),
            const HeaderText(),
            verticalSpace(24),
            const ListViewCategories(),
            verticalSpace(40),
            const HeroText(
              headerText: 'Héroes',
              subText: 'Ver todo',
            ),
            verticalSpace(16),
            const HomeBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
