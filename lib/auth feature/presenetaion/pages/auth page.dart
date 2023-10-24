import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/controller/auth%20cubit.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/controller/auth%20state.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/widgets/auth%20row%20items.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/widgets/auth%20text%20form%20field%20section.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/widgets/positions%20enum.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/core/widgets/custom%20button.dart';

import '../widgets/auth text form field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () => BlocProvider.of<AuthCubit>(context)
                              .switchAuthMode(isLogin: true),
                          child: LoginRowItem(
                            isLogin: (state is LoginState) ? true : false,
                          )),
                      GestureDetector(
                        onTap: () => BlocProvider.of<AuthCubit>(context)
                            .switchAuthMode(isLogin: false),
                        child: SignupRowItem(
                          isLogin: (state is SignupState) ? true : false,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  (state is LoginState)
                      ? const AuthLogInTextFieldSection()
                      : const AuthSignUpTextFieldSection(),
                  const SizedBox(height: 50),
                  CustomButton(
                    isLogin: (state is LoginState) ? true : false,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
