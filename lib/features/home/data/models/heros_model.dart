import 'package:flutter/material.dart';
import 'package:marvel_app/core/theming/app_colors.dart';

class HerosModel {
  final String imgUrl;
  final String title;
  final String description;
  final Color color;

  HerosModel({
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.color,
  });
}

List<HerosModel> heros = [
  HerosModel(
    imgUrl: 'assets/images/D.png',
    title: 'Peter Parker',
    description: 'Homem Aranha',
    color: AppColors.primary,
  ),
  HerosModel(
    imgUrl: 'assets/images/B.png',
    title: 'Steve Rogers',
    description: 'Capitão América',
    color: Colors.black,
  ),
  HerosModel(
    imgUrl: 'assets/images/C.png',
    title: 'Tony Stark',
    description: 'Homem de Ferro',
    color: Colors.indigoAccent,
  ),
  HerosModel(
    imgUrl: 'assets/images/A.png',
    title: 'Johan Schmidt',
    description: 'Caveira Vermelha',
    color: Colors.orange,
  ),
];
