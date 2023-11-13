
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';
import '../../../../core/widgets/custom button.dart';
import 'auth text form field.dart';
import 'positions enum.dart';

class AuthSignUpSection extends StatelessWidget {
  const AuthSignUpSection({super.key});

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
          icon: CupertinoIcons.person,
          placeholder: 'Username',
          position: Positions.center,
        ),
        const AuthTextFormField(
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
        const SizedBox(height: 50),
                CustomButton(
                 widget: const Text('Signup'),
                 onPressed: () async{
                // await BlocProvider.of<AuthCubit>(context).loginFunc(email: 'mahmoudswilam02@gmail.com',password: '12345678',); 
                 },
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
  }
}
