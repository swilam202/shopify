import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/widgets/custom%20carousel%20slider.dart';

import '../../../../core/styles/text styles.dart';
import '../widgets/custom home page appbar.dart';
import '../widgets/home page categories listview.dart';
import '../widgets/home page grid view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            child: Text(
              'Cateories',
              style: TextStyles.style30Bold,
            ),
          ),
          SizedBox(
            height: 200,
            child: CustomCarouselSlider(
              items: List.generate(
                10,
                (index) => Container(
                  margin: const EdgeInsets.all(12),
                  color: Colors.primaries[index],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            child: Text(
              'Hot',
              style: TextStyles.style30Bold,
            ),
          ),
          const HomePageDataGridView(),
        ],
      ),
    );
  }
}
