import 'package:hhhhhhhh/features/auth%20feature/domain/entites/change%20password.dart';

class ChangePasswordModel extends ChangePassword {
  ChangePasswordModel({
    required super.status,
    required super.message,
  });

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    return ChangePasswordModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
