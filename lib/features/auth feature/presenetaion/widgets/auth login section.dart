import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20state.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/widgets/auth%20text%20form%20field.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom button.dart';
import 'positions enum.dart';

class AuthLogInSection extends StatelessWidget {
  const AuthLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Column(
      children: [
        AuthTextFormField(
          controller: emailController,
          icon: CupertinoIcons.envelope,
          placeholder: 'Email',
          position: Positions.top,
        ),
        AuthTextFormField(
          controller: passwordController,
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
        const SizedBox(height: 50),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return CustomButton(
                widget: (state is LoginLoadingState)
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Text('Login'),
                onPressed: (state is LoginLoadingState)
                    ? null
                    : () async {
                        await BlocProvider.of<LoginCubit>(context)
                            .loginFunction(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                      });
          },
        )
      ],
    );
  }
}
