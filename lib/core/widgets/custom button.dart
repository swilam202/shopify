import 'package:flutter/material.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,

    required this.isLogin,
  });


  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(StyleColor.orangeColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
        ),
      ),
      onPressed: (){},
      child: Text(
        isLogin ? 'Log in':'Sign up',
        style: TextStyles.style15Bold,
      ),
    );
  }
}
