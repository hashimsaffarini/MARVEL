import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_app/core/helpers/spacing.dart';
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
          current is CharactersError,
      builder: (context, state) {
        return state.maybeWhen(
          charactersLoading: () => const HomeShimmer(),
          charactersSuccess: (charactersList) => buildSuccsess(charactersList),
          charactersError: (error) => Center(child: Text(error.toString())),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccsess(characterList) {
    return Column(
      children: [
        const ListViewHeroes(),
        verticalSpace(16),
        const HeroText(
          headerText: 'Villanos',
          subText: 'Ver todo',
        ),
        verticalSpace(16),
        GirdViewHeros(characters: characterList),
      ],
    );
  }
}
