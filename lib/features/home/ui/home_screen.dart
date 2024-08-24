import 'package:flutter/material.dart';
import 'package:marvel_app/core/widgets/custom_app_bar.dart';
import 'package:marvel_app/features/home/ui/widgets/home_page_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const HomePageBody(),
    );
  }
}
