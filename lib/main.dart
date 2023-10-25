import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth feature/presenetaion/controller/auth cubit.dart';
import 'features/base feature/presentation/pages/base page.dart';

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
        home: BasePage(),
      ),
    );
  }
}
