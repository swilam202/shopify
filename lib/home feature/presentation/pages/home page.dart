import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';

import '../../../core/styles/text styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            HomePageCustomAppBar(),
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
            HomePageDataGridView()
          ],
        ),
      ),
    );
  }
}

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
              ]),
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

class HomePageCategoriesListView extends StatelessWidget {
  const HomePageCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 1.5 / 1,
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 164, 99, 99),
          ),
        );
      },
    );
  }
}

class HomePageCustomAppBar extends StatelessWidget {
  const HomePageCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
