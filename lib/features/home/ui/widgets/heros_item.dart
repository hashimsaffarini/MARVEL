import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/features/home/data/models/heros_model.dart';

class HerosItem extends StatelessWidget {
  final HerosModel hero;
  const HerosItem({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 150.w,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: 230.h,
              width: 140.w,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: hero.color.withOpacity(0.26),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: const Offset(7, 7),
                  ),
                ],
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(hero.imgUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 200,
            child: Opacity(
              opacity: 0.75,
              child: Text(
                hero.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                  height: 0.10,
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 210,
            child: SizedBox(
              width: 112.w,
              child: Text(
                hero.description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0.8.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
