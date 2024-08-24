import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_app/features/home/data/models/marvel_models.dart';
import 'package:marvel_app/features/home/ui/widgets/character_grid_item.dart';

class GirdViewHeros extends StatelessWidget {
  final List<Results?> characters;
  const GirdViewHeros({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.75,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 24.w),
          child: CharacterGridItem(character: characters[index]!),
        );
      },
    );
  }
}
