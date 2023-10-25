import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/controller/auth%20cubit.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/pages/auth%20page.dart';

import 'home feature/presentation/pages/home page.dart';

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
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
