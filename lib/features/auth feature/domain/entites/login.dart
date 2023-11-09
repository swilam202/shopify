import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login%20data.dart';

class Login {
  final bool status;
  final String message;
  final LoginData? data;

  const Login({
    required this.status,
    required this.message,
    required this.data,
  });
}
