import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category%20data.dart';

import '../../../../core/widgets/custom carousel slider.dart';

class HomePageCategoriesSection extends StatelessWidget {
  const HomePageCategoriesSection({
    super.key,
    required this.categories,
  });
  final List<CategoryData> categories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: CustomCarouselSlider(
        items: List.generate(
          categories.length,
          (index) => Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                child: Image.network(
                  categories[index].image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  color: StyleColor.darkColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        categories[index].name,
                        style: TextStyles.style20Bold
                            .copyWith(color: StyleColor.whiteColor),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

/*
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
}*/
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
