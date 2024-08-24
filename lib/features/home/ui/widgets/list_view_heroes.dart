import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/features/home/data/models/heros_model.dart';
import 'package:marvel_app/features/home/ui/widgets/heros_item.dart';

class ListViewHeroes extends StatelessWidget {
  const ListViewHeroes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.builder(
        itemCount: heros.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: HerosItem(
              hero: heros[index],
            ),
          );
        },
      ),
    );
  }
}
