import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
import 'package:marvel_app/core/theming/app_colors.dart';
import 'package:marvel_app/features/home/logic/cubit/home_cubit.dart';
import 'package:marvel_app/features/home/logic/cubit/home_state.dart';
import 'package:marvel_app/features/home/ui/widgets/grid_view_heros.dart';
import 'package:marvel_app/features/home/ui/widgets/hero_text.dart';
import 'package:marvel_app/features/home/ui/widgets/home_shimmer.dart';
import 'package:marvel_app/features/home/ui/widgets/list_view_heroes.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is CharactersSuccess ||
          current is CharactersLoading ||
          current is CharactersError ||
          current is PaginationLoading ||
          current is PaginationSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          charactersLoading: () => const HomeShimmer(),
          charactersSuccess: (charactersList) =>
              buildSuccess(charactersList, context),
          paginationLoading: () => buildSuccessWithLoading(context),
          paginationSuccess: (charactersList) =>
              buildSuccess(charactersList, context),
          charactersError: (error) => Center(child: Text(error.toString())),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccess(charactersList, BuildContext context) {
    return Column(
      children: [
        const ListViewHeroes(),
        verticalSpace(16),
        const HeroText(
          headerText: 'Villanos',
          subText: 'Ver todo',
        ),
        verticalSpace(16),
        GirdViewHeros(characters: charactersList),
      ],
    );
  }

  Widget buildSuccessWithLoading(BuildContext context) {
    final charactersList = context.read<HomeCubit>().charactersList;

    return Column(
      children: [
        buildSuccess(charactersList, context),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 22, bottom: 24),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
