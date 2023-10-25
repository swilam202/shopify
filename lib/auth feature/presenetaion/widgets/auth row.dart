import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/controller/auth%20state.dart';

import '../controller/auth cubit.dart';
import 'auth row items.dart';

class AuthRow extends StatelessWidget {
  const AuthRow(this.state,{super.key});

  final AuthState state;
  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () => BlocProvider.of<AuthCubit>(context)
                            .switchAuthMode(isLogin: true),
                        child: LoginRowItem(
                          isLogin: (state is LoginState) ? true : false,
                        ),),
                    GestureDetector(
                      onTap: () => BlocProvider.of<AuthCubit>(context)
                          .switchAuthMode(isLogin: false),
                      child: SignupRowItem(
                        isLogin: (state is SignupState) ? true : false,
                      ),
                    ),
                  ],
                );
  }
}