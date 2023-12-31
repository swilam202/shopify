import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../controller/auth controller/auth cubit.dart';
import '../controller/auth controller/auth state.dart';
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
                          isLogin: (state is AuthLoginState) ? true : false,
                        ),),
                    GestureDetector(
                      onTap: () => BlocProvider.of<AuthCubit>(context)
                          .switchAuthMode(isLogin: false),
                      child: SignupRowItem(
                        isLogin: (state is AuthSignupState) ? true : false,
                      ),
                    ),
                  ],
                );
  }
}