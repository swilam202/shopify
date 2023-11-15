import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/widgets/custom%20carousel%20slider.dart';
import 'package:hhhhhhhh/core/widgets/states/custom%20loading.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20state.dart';
import 'package:hhhhhhhh/features/home%20feature/data/data%20source/base%20home%20page%20data%20source.dart';
import 'package:hhhhhhhh/features/home%20feature/data/repository/category%20repository.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/repository/base%20home%20page%20repository.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/usecase/get%20category%20usecase.dart';

import '../../../../core/styles/text styles.dart';
import '../controller/categories controller/home page categories cubit.dart';
import '../controller/categories controller/home page categories state.dart';
import '../widgets/custom home page appbar.dart';
import '../widgets/home page categories section.dart';
import '../widgets/home page trending section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SizedBox(height: 30),
          HomePageCategoriesSection(),
          HomePageTrendingSection(),
        ],
      ),
    ));
  }
}
