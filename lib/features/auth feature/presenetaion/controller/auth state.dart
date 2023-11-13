abstract class AuthState {}

class LoginState extends AuthState{}

class SignupState extends AuthState{}


class AuthInitialState extends AuthState{}
class AuthLoadingState extends AuthState{}
class AuthSuccessState extends AuthState{}
class AuthFailureState extends AuthState{}