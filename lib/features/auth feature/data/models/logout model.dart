import 'package:hhhhhhhh/features/auth%20feature/domain/entites/logout.dart';

class LogoutModel extends Logout {
  LogoutModel({
    required super.status,
    required super.message,
  });

  factory LogoutModel.fromJson(Map<String, dynamic> json) {
    return LogoutModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
