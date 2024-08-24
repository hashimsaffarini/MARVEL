import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marvel_app/features/home/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      width: 62.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        gradient: LinearGradient(
          colors: [
            category.topColor,
            category.bottomColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: SvgPicture.asset(
          category.imgUrl,

          height: 32.h,
          // ignore: deprecated_member_use
          color: Colors.white,
        ),
      ),
    );
  }
}
