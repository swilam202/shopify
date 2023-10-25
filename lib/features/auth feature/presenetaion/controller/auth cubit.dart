import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth state.dart';


class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(LoginState());

  //bool isLogin = true;

  void switchAuthMode({required bool isLogin}){
    if(isLogin){
      emit(LoginState());
      
    }
    else{
      emit(SignupState());
      
    }
  }
}