import 'package:flutter/material.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';




class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: StyleColor.whiteColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 0.5,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/test1.png',
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Faux Sued Ankle Boots',
              style: TextStyles.style15Medium,
            ),
            const Text(
              '7, Hot Pink',
              style: TextStyles.style15Light,
            ),
            const SizedBox(height: 11),
            const Text(
              '\$49.99',
              style: TextStyles.style15Medium,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove),
                ),
                const Text(
                  '1',
                  style: TextStyles.style15Regular,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
