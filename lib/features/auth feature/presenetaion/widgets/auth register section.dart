
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/widgets/states/custom%20loading.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/register%20controller/register%20cubit.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/register%20controller/register%20state.dart';

import '../../../../core/styles/style colors.dart';
import '../../../../core/styles/text styles.dart';
import '../../../../core/utils/text editing controller eraser.dart';
import '../../../../core/utils/user data storage.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/toast.dart';
import 'auth text form field.dart';
import 'positions enum.dart';

class AuthSignUpSection extends StatelessWidget {
  const AuthSignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
            return  Column(
      children: [
         AuthTextFormField(
          controller: nameController,
          icon: CupertinoIcons.person,
          placeholder: 'Name',
          position: Positions.top,
        ),
         AuthTextFormField(
          controller: emailController,
          icon: CupertinoIcons.envelope,
          placeholder: 'Email',
          position: Positions.center,
          type: TextInputType.emailAddress,
        ),
        
         AuthTextFormField(
          controller: phoneController,
          icon: CupertinoIcons.phone,
          placeholder: 'Phone',
          position: Positions.center,
          type: TextInputType.phone,
        ),
       
         AuthTextFormField(
          controller: passwordController,
          icon: CupertinoIcons.lock,
          placeholder: 'Password',
          position: Positions.buttom,
        ),
        
        const SizedBox(height: 50),
        BlocConsumer<RegisterCubit,RegisterState>(
          listener: (context, state) {
             if (state is RegisterSuccessState) {
                if(state.registerData.status){
                  showToast(msg: state.registerData.message, isGreen: true);
                   UserDataStorage.setData(state.registerData.data!);
                  textEditingControllerEraser([emailController,passwordController]);

                }
                else{
                  showToast(msg: state.registerData.message, isGreen: false);
                }
            }
            else if (state is RegisterFailureState) {
                showToast(msg: state.errorMessage, isGreen: false);
            }
          },
          builder: (context, state) {
             return  CustomButton(
                 widget: (state is RegisterLoadingState)? CustomLoadingState()
                    :  Text('Signup'),
                 onPressed:(state is RegisterLoadingState)
                    ? null
                    :  () async{
                 await BlocProvider.of<RegisterCubit>(context).registerFunction(email: emailController.text, password: passwordController.text, image: 'image', name: nameController.text, phone: phoneController.text,);
                    },);
              
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
