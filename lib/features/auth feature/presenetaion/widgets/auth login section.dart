import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/widgets/auth%20text%20form%20field.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom button.dart';
import 'positions enum.dart';


class AuthLogInSection extends StatelessWidget {
  const AuthLogInSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const AuthTextFormField(
          icon: CupertinoIcons.envelope,
          placeholder: 'Email',
          position: Positions.top,
        ),
        const AuthTextFormField(
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
        const SizedBox(height: 50),
                CustomButton(
                 widget: const Text('Login'),
                 onPressed: () async{
                 //await BlocProvider.of<AuthCubit>(context).loginFunc(email: 'mahmoudswilam02@gmail.com',password: '12345678',); 
                 },
                ),
      ],
    );
  }
}
