import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/styles/style%20colors.dart';
import 'package:hhhhhhhh/core/styles/text%20styles.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/auth%20cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
     required this.text,
     this.isLogin,
  });

  final String text;
  final bool? isLogin;
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
          const EdgeInsets.only(top: 12,bottom: 12,left: 60,right: 20 ),
        ),
      ),
      onPressed: ()async{
       await BlocProvider.of<AuthCubit>(context).loginFunc();
      },
      
      child: Row(

        children: [
          Text(
            text,
            style: TextStyles.style15Bold,
          ),
          const Spacer(),
          const CircleAvatar(backgroundColor: StyleColor.whiteColor,child: Icon(Icons.arrow_forward_ios_outlined,color: StyleColor.orangeColor,))
        ],
      ),
    );
  }
}
