import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register%20data.dart';

class Register {
  final bool status;
  final String message;
  final RegisterData data;

  const Register({
    required this.status,
    required this.message,
    required this.data,
  });
}
