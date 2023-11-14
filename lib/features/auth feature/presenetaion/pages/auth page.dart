import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';

import '../controller/auth controller/auth cubit.dart';
import '../controller/auth controller/auth state.dart';

import '../widgets/auth row.dart';
import '../widgets/auth login section.dart';
import '../widgets/auth register section.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: BlocBuilder<AuthCubit,AuthState>(
        builder: (context, state) {
          
           return SafeArea(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return ListView(
              padding: EdgeInsets.all(24),
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 50),
                AuthRow(state),
                const SizedBox(height: 50),
                (state is AuthLoginState)
                    ? const AuthLogInSection()
                    : const AuthSignUpSection(),
                
                
              ],
            );
          },
        ),
      );
          
         
        },
      )
         );
  }
}
