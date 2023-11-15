import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category%20data.dart';

import '../../../../core/widgets/custom carousel slider.dart';
import '../../../../core/widgets/states/custom loading.dart';
import '../controller/categories controller/home page categories cubit.dart';
import '../controller/categories controller/home page categories state.dart';

class HomePageCategoriesSection extends StatefulWidget {
  const HomePageCategoriesSection({super.key});

  @override
  State<HomePageCategoriesSection> createState() =>
      _HomePageCategoriesSectionState();
}

class _HomePageCategoriesSectionState extends State<HomePageCategoriesSection> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePageCategoriesCubit>(context).loadPage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCategoriesCubit,HomePageCategoriesState>(
      builder: (context, state) {
        if (state is HomePageCategoriesSuccessState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                child: Text(
                  'Cateories',
                  style: TextStyles.style30Bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: CustomCarouselSlider(
                  items: List.generate(
                    state.category.categoryData.length,
                    (index) => Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          child: Image.network(
                            state.category.categoryData[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          color: StyleColor.darkColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                state.category.categoryData[index].name,
                                style: TextStyles.style20Bold
                                    .copyWith(color: StyleColor.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        } else if (state is HomePageCategoriesFailureState) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const CustomLoadingState();
        }
      },
    );
  }
}
