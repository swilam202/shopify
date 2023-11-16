import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/widgets/states/custom%20loading.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/trending.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/trending%20controller/trending%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/trending%20controller/trending%20state.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';

/*
 const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
            child: Text(
              'Trending',
              style: TextStyles.style30Bold,
            ),
          ),
*/

class HomePageTrendingSection extends StatefulWidget {
  const HomePageTrendingSection({super.key});

  @override
  State<HomePageTrendingSection> createState() =>
      _HomePageTrendingSectionState();
}

class _HomePageTrendingSectionState extends State<HomePageTrendingSection> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePageTrendingCubit>(context).loadPage();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageTrendingCubit, HomePageTrendingState>(
      builder: (context, state) {
        if (state is HomePageTrendingSuccessState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                child: Text(
                  'Trending',
                  style: TextStyles.style30Bold,
                ),
              ),
              GridView.builder(
                itemCount: state.trending.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.27,
                ),
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:  StyleColor.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                     /* boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 0.5,
                          offset: const Offset(2, 1),
                        ),
                      ],*/
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            state.trending[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                state.trending[index].name,
                                style: TextStyles.style12Bold,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$ ${state.trending[index].price}',
                          style: TextStyles.style15Bold.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        } else if (state is HomePageTrendingFailureState) {
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
