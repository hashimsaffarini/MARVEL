import 'package:flutter/material.dart';

class CategoryModel {
  final String imgUrl;
  final Color topColor;
  final Color bottomColor;

  CategoryModel({
    required this.imgUrl,
    required this.topColor,
    required this.bottomColor,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    imgUrl: 'assets/svgs/a.svg',
    topColor: const Color(0xff005BEA),
    bottomColor: const Color(0xff00C6FB),
  ),
  CategoryModel(
    imgUrl: 'assets/svgs/b.svg',
    topColor: const Color(0XFFED1D24),
    bottomColor: const Color(0XFFED1F69),
  ),
  CategoryModel(
    imgUrl: 'assets/svgs/c.svg',
    topColor: const Color(0XFFB224EF),
    bottomColor: const Color(0XFF7579FF),
  ),
  CategoryModel(
    imgUrl: 'assets/svgs/d.svg',
    topColor: const Color(0XFF0BA360),
    bottomColor: const Color(0XFF3CBA92),
  ),
  CategoryModel(
    imgUrl: 'assets/svgs/e.svg',
    topColor: const Color(0xFFFF7EB3),
    bottomColor: const Color(0xFFFF758C),
  ),
];
