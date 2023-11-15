import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key,required this.items,});
  final List<Widget> items;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    items: items,
    options: CarouselOptions(
      autoPlay: true,
      aspectRatio: 1 / 3,
      
      autoPlayAnimationDuration: const Duration(seconds: 1),
      autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
      reverse: false,
      enableInfiniteScroll: true,
      viewportFraction: 0.9,
    ),
    );
  }
}

