import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/features/home/logic/cubit/home_cubit.dart';
import 'package:marvel_app/features/home/ui/widgets/header_text.dart';
import 'package:marvel_app/features/home/ui/widgets/hero_text.dart';
import 'package:marvel_app/features/home/ui/widgets/home_bloc_builder.dart';
import 'package:marvel_app/features/home/ui/widgets/list_view_categories.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<HomeCubit>().scrollController;

    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        final homeCubit = context.read<HomeCubit>();
        if (!homeCubit.isLoadingMore) {
          homeCubit.loadMoreCharacters();
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: SingleChildScrollView(
        controller: controller,
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
