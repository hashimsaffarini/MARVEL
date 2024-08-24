import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharacterGridItemShimmer extends StatelessWidget {
  const CharacterGridItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shimmer for the image area
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),
                // Shimmer for the title
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 16,
                    width: 100,
                    color: Colors.grey[300],
                  ),
                ),
                // Shimmer for the subtitle
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: 14,
                    width: 150,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
