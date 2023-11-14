
import 'auth data.dart';

class Register {
  final bool status;
  final String message;
  final AuthData? data;

  const Register({
    required this.status,
    required this.message,
    this.data,
  });
}
