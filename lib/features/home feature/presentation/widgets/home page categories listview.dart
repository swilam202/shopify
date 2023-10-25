import 'package:flutter/material.dart';


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
