import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/auth%20feature/presenetaion/controller/login%20controller/login%20state.dart';

import '../../../data/data source/base auth data source.dart';
import '../../../domain/entites/login.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  loginFunction({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    try {
      AuthDataSource authDataSource = AuthDataSource();
      Login loginData = await authDataSource.postLogin(
        email: email,
        password: password,
      );
     
      emit(LoginSuccessState(loginData));
      
 
    } catch (e) {
      emit(LoginFailureState(e.toString()));
    }
  }

   @override
  void onChange(Change<LoginState> change) {
    // TODO: implement onChange
    super.onChange(change);
        print(change);
    print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');

    print(change);
        print('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');

  }

}
