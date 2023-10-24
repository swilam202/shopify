import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/widgets/positions%20enum.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';

import '../widgets/auth text form field.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Log in',style: TextStyles.style30Bold,),
                  Text('Sign up',style: TextStyles.style30Bold,),
                  
                ],
              ),
            ),
            AuthTextFormField(
              icon: CupertinoIcons.envelope,
              placeholder: 'Email',
              position: Positions.top,

            ),
            AuthTextFormField(
              icon: CupertinoIcons.envelope,
              placeholder: 'Email',
              position: Positions.center,

            ),
            AuthTextFormField(
              icon: CupertinoIcons.envelope,
              placeholder: 'Email',
              position: Positions.buttom,

            ),
          ],
        ),
      ),
      );

  }
}