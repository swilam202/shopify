import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/service%20locator.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/register%20controller/register%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/pages/auth%20page.dart';
import 'package:hhhhhhhh/features/base%20feature/presentation/controller/base%20page%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/controller/home%20page%20cubit.dart';
import 'package:hhhhhhhh/features/home%20feature/presentation/pages/home%20page.dart';

import 'features/auth feature/presenetaion/controller/auth controller/auth cubit.dart';
import 'features/base feature/presentation/pages/base page.dart';
import 'features/cart feature/presentation/pages/checkout page.dart';
import 'features/details feature/presentation/pages/details page.dart';
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
        BlocProvider(create: (context) => HomePageCubit()..loadPage()),
        //BlocProvider(create: (context) => BasePageCubit()..loadPages(context)),
      ],
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: StyleColor.whiteColor,
        ),
        home: const HomePage(),
      ),
    );
  }
}
