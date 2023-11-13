import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/data%20source/base%20auth%20data%20source.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';

import 'auth state.dart';


class AuthCubit extends Cubit<AuthState>{
  AuthCubit():super(AuthLoginState());


  void switchAuthMode({required bool isLogin}){
    if(isLogin){
      emit(AuthLoginState());
      
    }
    else{
      emit(AuthSignupState());
      
    }
  }
}