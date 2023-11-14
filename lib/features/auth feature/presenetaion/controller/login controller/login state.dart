import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';

abstract class LoginState{}

class LoginInitialState extends LoginState{}
class LoginLoadingState extends LoginState{}
class LoginSuccessState extends LoginState{
  Login loginData;
  LoginSuccessState(this.loginData);
}
class LoginFailureState extends LoginState{
  String errorMessage;
  LoginFailureState(this.errorMessage);
}