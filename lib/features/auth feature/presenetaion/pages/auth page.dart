import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20button.dart';

import '../controller/auth cubit.dart';
import '../controller/auth state.dart';
import '../widgets/auth row.dart';
import '../widgets/auth text form field section.dart';
import '../widgets/auth text form field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return ListView(
              padding: EdgeInsets.all(23),
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 50),
                AuthRow(state),
                const SizedBox(height: 50),
                (state is LoginState)
                    ? const AuthLogInTextFieldSection()
                    : const AuthSignUpTextFieldSection(),
                const SizedBox(height: 50),
                CustomButton(
                  isLogin: (state is LoginState) ? true : false,
                  text: (state is LoginState) ? 'Log In' : 'Sign Up',
                ),
                const SizedBox(height: 30),
                const Text(
                  'By creating an account, you agree to our',
                  textAlign: TextAlign.center,
                  style: TextStyles.style12Light,
                ),
                Text(
                  'Terms of Service and Privacy Policy',
                  textAlign: TextAlign.center,
                  style: TextStyles.style12Light
                      .copyWith(color: StyleColor.orangeColor),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
