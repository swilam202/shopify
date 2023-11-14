import 'package:hhhhhhhh/features/auth%20feature/domain/entites/auth%20data.dart';

class Login {
  final bool status;
  final String message;
  final AuthData? data;

  const Login({
    required this.status,
    required this.message,
     this.data,
  });
}
