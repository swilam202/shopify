import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20state.dart';

import '../../../data/data source/base auth data source.dart';
import '../../../domain/entites/login.dart';



class LoginCubit extends Cubit<LoginState>{
  LoginCubit():super(LoginInitialState());




   loginFunction({required String email,required String password,})async{
    emit(LoginLoadingState());
    try{
      AuthDataSource authDataSource = AuthDataSource();
      Login a = await authDataSource.postLogin(email: email,password:  password,);
        print(a.message.toString());
        
      emit(LoginSuccessState());
    }
    catch (e){
      emit(LoginFailureState());
    }
  }

}