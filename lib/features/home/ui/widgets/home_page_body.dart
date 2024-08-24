import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/features/home/ui/widgets/header_text.dart';
import 'package:marvel_app/features/home/ui/widgets/list_view_categories.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          verticalSpace(24),
          const HeaderText(),
          verticalSpace(24),
          const ListViewCategories(),
          verticalSpace(48),
        ],
      ),
    );
  }
}
