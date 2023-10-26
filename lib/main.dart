import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';

import 'features/auth feature/presenetaion/controller/auth cubit.dart';
import 'features/base feature/presentation/pages/base page.dart';
import 'features/cart feature/presentation/pages/checkout page.dart';
import 'features/details feature/presentation/pages/details page.dart';
import 'features/search feature/presentation/pages/result page.dart';

void main() {
  runApp(const Shopify());
}

class Shopify extends StatelessWidget {
  const Shopify({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child:  MaterialApp(
        theme: ThemeData(
          canvasColor: StyleColor.whiteColor,
        ),
        home: const DetailsPage(),
      ),
    );
  }
}
