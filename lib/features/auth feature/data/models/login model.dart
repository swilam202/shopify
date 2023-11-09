import 'package:hhhhhhhh/features/auth%20feature/data/models/login%20data%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';

class LoginModel extends Login {
  LoginModel({
    required super.status,
    required super.message,
    required super.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      message: json['message'],
      data: LoginDataModel.fromJson(json['data']),
    );
  }
}
