import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/register%20controller/register%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/pages/auth%20page.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20cubit.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/data%20source/base%20cart%20data%20source.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/repository/cart%20repoistory.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/repository/base%20cart%20repoistory.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/usecase/get%20address%20usecase.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/controller/cart%20cubit.dart';
import 'package:hhhhhhhh/features/cart%20feature/presentation/pages/cart%20page.dart';
import 'package:hhhhhhhh/features/details%20feature/data/data%20source/product%20details%20data%20source.dart';
import 'package:hhhhhhhh/features/details%20feature/data/repository/product%20details%20repository.dart';
import 'package:hhhhhhhh/features/details%20feature/domain/repository/base%20product%20details%20repository.dart';
import 'package:hhhhhhhh/features/details%20feature/domain/usecase/get%20product%20details%20usecase.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/trending%20controller/trending%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/pages/home%20page.dart';
import 'package:hhhhhhhh/features/search%20feature/data/data%20source/search%20data%20source.dart';
import 'package:hhhhhhhh/features/search%20feature/data/repository/search%20repository.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/repository/base%20search%20repository.dart';
import 'package:hhhhhhhh/features/search%20feature/domain/usecase/get%20category%20products.dart';

import 'features/auth feature/presenetaion/controller/auth controller/auth cubit.dart';
import 'features/base feature/presentation/pages/base page.dart';
import 'features/cart feature/domain/entites/address.dart';
import 'features/cart feature/domain/usecase/add remove cart usecase.dart';
import 'features/cart feature/presentation/pages/checkout page.dart';
import 'features/details feature/presentation/pages/details page.dart';
import 'features/home feature/presentation/controller/categories controller/home page categories cubit.dart';
import 'features/search feature/presentation/controller/search page cubit.dart';
import 'features/search feature/presentation/pages/result page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().setup();
  runApp(const Shopify());
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        BlocProvider(create: (context) => HomePageCategoriesCubit()..loadPage()),
        BlocProvider(create: (context) => HomePageTrendingCubit()..loadPage()),
        BlocProvider(create: (context) => CartCubit()..loadData()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: StyleColor.whiteColor,
        ),
        home: const Cardi(),
      ),
    );
  }
}

class Cardi extends StatelessWidget {
  const Cardi({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          BaseCartDataSource baseCartDataSource = CartDataSource();
          BaseCartRepository baseCartRepository = CartRepository(baseCartDataSource);
          AddRemoveCartUseCase addRemoveCartUseCase = AddRemoveCartUseCase(baseCartRepository);
          GetAddressUseCase getAddressUseCase = GetAddressUseCase(baseCartRepository);

          BaseProductDetailsDataSource baseProductDetailsDataSource = ProductDetailsDataSource();
          BaseProductDetailsRepository baseProductDetailsRepository = ProductDetailsRepository(baseProductDetailsDataSource);
          GetProductDetailsUseCase getProductDetailsUseCase = GetProductDetailsUseCase(baseProductDetailsRepository);
          BaseSearchDataSource baseSearchDataSource = SearchDataSource();
          BaseSearchRepository baseSearchRepository = SearchRepository(baseSearchDataSource);
          GetCategoryProductsUseCase getCategoryProductsUseCase = GetCategoryProductsUseCase(baseSearchRepository);
          var data = await getCategoryProductsUseCase.execute(44);

          print(data);
        }, child: Text('data'),),
      ),
    );
  }
}

