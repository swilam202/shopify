import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/auth%20feature/presenetaion/controller/auth%20state.dart';


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