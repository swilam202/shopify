import 'package:flutter/material.dart';

import '../../../core/styles/text styles.dart';
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
        children: const [
         // HomePageCustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            child: Text(
              'Cateories',
              style: TextStyles.style30Bold,
            ),
          ),
          SizedBox(
            height: 200,
            child: HomePageCategoriesListView(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            child: Text(
              'Hot',
              style: TextStyles.style30Bold,
            ),
          ),
          HomePageDataGridView(),
        ],
      ),
    );
  }
}
