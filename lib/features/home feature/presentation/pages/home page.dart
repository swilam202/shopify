import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/widgets/custom%20carousel%20slider.dart';
import 'package:hhhhhhhh/core/widgets/states/custom%20loading.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20state.dart';
import 'package:hhhhhhhh/features/home%20feature/data/data%20source/base%20category%20data%20source.dart';
import 'package:hhhhhhhh/features/home%20feature/data/repository/category%20repository.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20categoies%20repository.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/usecase/get%20category%20usecase.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20state.dart';

import '../../../../core/styles/text styles.dart';
import '../widgets/custom home page appbar.dart';
import '../widgets/home page categories section.dart';
import '../widgets/home page grid view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<HomePageCubit>(context).loadPage();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: BlocBuilder<HomePageCubit,HomePageState>(
      builder: (context, state) {
        if(state is HomePageSuccessState){
                            return SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 30),
            
           HomePageCategoriesSection(categories: state.category.categoryData),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
              child: Text(
                'Trending',
                style: TextStyles.style30Bold,
              ),
            ),
            const HomePageDataGridView(),
          ],
        ),
      );
        
        }
        else if(state is HomePageFailureState){
          return Center(child: Text(state.errorMessage),);
   
        }
        else{
          return CustomLoadingState();
        }
      },
     ),
   );
   
    }
}
