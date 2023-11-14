import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

import '../../../data/data source/base auth data source.dart';
import 'signup state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitialState());

  signupFunction({
    required String email,
    required String password,
    required String image,
    required String name,
    required String phone,
  }) async {
    emit(SignupLoadingState());
    try {
      AuthDataSource authDataSource = AuthDataSource();
      Register registerData = await authDataSource.postRegister(
        name: name,
        phone: phone,
        email: email,
        password: password,
        image: image,
      );

      emit(SignupSuccessState(registerData));
    } catch (e) {
      emit(SignupFailureState(e.toString()));
    }
  }
}
