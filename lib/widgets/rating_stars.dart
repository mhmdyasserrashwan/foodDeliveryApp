import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int starsCount;
  const RatingStars({super.key, required this.starsCount});

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for (var i = 0; i < starsCount; i++) {
      stars += '⭐';
    }
    stars.trim();
    return Text(
      stars,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
