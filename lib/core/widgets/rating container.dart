import 'package:flutter/material.dart';

import '../styles/style colors.dart';
import '../styles/text styles.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: StyleColor.orangeColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.star,
            color: StyleColor.whiteColor,
            size: 10,
          ),
          Text(
            '4.9',
            style: TextStyles.style9Bold,
          ),
        ],
      ),
    );
  }
}
