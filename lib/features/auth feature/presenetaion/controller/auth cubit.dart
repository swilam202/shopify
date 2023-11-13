import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/data%20source/base%20auth%20data%20source.dart';

import 'auth state.dart';


class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(LoginState());

  //bool isLogin = true;


   loginFunc()async{
    emit(AuthInitialState());
    try{
      AuthDataSource authDataSource = AuthDataSource();
      var a = await authDataSource.postLogin(email: 'mahmoudswilam02@gmail.com',password:  '12345678',);
    /*  Dio dio = Dio();
     var a=  await dio.post(
        'https://student.valuxapps.com/api/login',
        data: {
        "email": 'mahmoudswilam02@gmail.com',
        "password": '12345678',
      },
      );*/
        print(a);
        
      emit(AuthSuccessState());

    }
    catch (e){
      emit(AuthFailureState());
    }
  }

  void switchAuthMode({required bool isLogin}){
    if(isLogin){
      emit(LoginState());
      
    }
    else{
      emit(SignupState());
      
    }
  }
}