import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/widgets/auth%20text%20form%20field.dart';

import 'positions enum.dart';


class AuthSignUpTextFieldSection extends StatelessWidget {
  const AuthSignUpTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthTextFormField(
          icon: CupertinoIcons.envelope,
          placeholder: 'Email',
          position: Positions.top,
        ),
        AuthTextFormField(
          icon: CupertinoIcons.person,
          placeholder: 'Username',
          position: Positions.center,
        ),
        AuthTextFormField(
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
        
        
      ],
    );
  }
}

class AuthLogInTextFieldSection extends StatelessWidget {
  const AuthLogInTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthTextFormField(
          icon: CupertinoIcons.envelope,
          placeholder: 'Email',
          position: Positions.top,
        ),
        AuthTextFormField(
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
      ],
    );
  }
}
