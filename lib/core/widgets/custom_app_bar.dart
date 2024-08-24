import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar() {
  return AppBar(
    centerTitle: true,
    title: SvgPicture.asset(
      'assets/svgs/marvel.svg',
      width: 85,
    ),
    leading: Padding(
      padding: const EdgeInsets.all(14.0),
      child: SvgPicture.asset(
        'assets/svgs/leading.svg',
        width: 20,
        height: 20,
      ),
    ),
    actions: const [
      Icon(
        Icons.search,
        size: 28,
        color: Colors.black,
      ),
      SizedBox(width: 14),
    ],
  );
}
