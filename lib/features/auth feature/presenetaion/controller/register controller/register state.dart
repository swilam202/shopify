import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

abstract class RegisterState {}

class RegisterInitialState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {
  Register registerData;
  RegisterSuccessState(this.registerData);
}

class RegisterFailureState extends RegisterState {
  String errorMessage;
  RegisterFailureState(this.errorMessage);
}
