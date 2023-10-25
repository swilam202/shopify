import 'package:flutter/material.dart';

import '../../../core/styles/style colors.dart';
import '../../../core/styles/text styles.dart';


class HomePageDataGridView extends StatelessWidget {
  const HomePageDataGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 24,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        mainAxisExtent: MediaQuery.of(context).size.height * 0.18,
      ),
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: StyleColor.whiteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 0.5,
                  offset: const Offset(5, 5),
                ),
              ],),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/test1.png',
                fit: BoxFit.fill,
              ),
              const Text(
                'Ankle Boots',
                style: TextStyles.style12Light,
              ),
              Text(
                '\$49.99',
                style: TextStyles.style10Medium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: StyleColor.extraDarkColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

