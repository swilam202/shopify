import 'package:flutter/material.dart';

import 'result page gird item.dart';

class ResultPageGrid extends StatelessWidget {
  const ResultPageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 24,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 11,
        mainAxisSpacing: 11,
        mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
      ),
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return const ResultPageGridItem();
      },
    );
  }
}
