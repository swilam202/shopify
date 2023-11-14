import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

abstract class SignupState {}

class SignupInitialState extends SignupState {}

class SignupLoadingState extends SignupState {}

class SignupSuccessState extends SignupState {
  Register loginData;
  SignupSuccessState(this.loginData);
}

class SignupFailureState extends SignupState {
  String errorMessage;
  SignupFailureState(this.errorMessage);
}
