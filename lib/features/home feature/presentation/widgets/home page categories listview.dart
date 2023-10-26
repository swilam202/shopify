import 'package:carousel_slider/carousel_slider.dart';
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
/*
class HomePageCarouselSlider extends StatelessWidget {
  const HomePageCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        10,
        (index) => Container(
          margin: const EdgeInsets.all(12),
          color: Colors.primaries[index],
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 1 / 2,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
        reverse: false,
        enableInfiniteScroll: true,
        viewportFraction: 0.9,
      ),
    );
  }
}*/
