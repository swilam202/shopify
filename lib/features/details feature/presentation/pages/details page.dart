import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20carousel%20slider.dart';
import 'package:hhhhhhhh/core/widgets/rating%20container.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: StyleColor.whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: StyleColor.orangeColor,
          ),
        ),
        title: Column(
          children: [
            const Text(
              'Faux Sued Ankle Boots',
              style: TextStyles.style15Light,
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$49.99',
                  style: TextStyles.style15Bold.copyWith(
                    color: StyleColor.extraDarkColor,
                  ),
                ),
                const SizedBox(width: 6),
                const RatingContainer(),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: StyleColor.extraDarkColor,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: StyleColor.orangeColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: StyleColor.orangeColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CustomCarouselSlider(
              items: [
                Image.asset('assets/images/test1.png', fit: BoxFit.fill),
                Image.asset('assets/images/test1.png', fit: BoxFit.fill),
                Image.asset('assets/images/test1.png', fit: BoxFit.fill),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
