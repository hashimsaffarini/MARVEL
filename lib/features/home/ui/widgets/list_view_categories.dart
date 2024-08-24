import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/features/home/data/models/category_model.dart';
import 'package:marvel_app/features/home/ui/widgets/category_item.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: EdgeInsets.only(right: 12.0.w),
            child: CategoryItem(category: category),
          );
        },
      ),
    );
  }
}
