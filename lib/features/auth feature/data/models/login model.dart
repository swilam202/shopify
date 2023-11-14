import 'package:hhhhhhhh/features/auth%20feature/data/models/auth%20data%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login.dart';

class LoginModel extends Login {
  LoginModel({
    required super.status,
    required super.message,
     super.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] == null? null:AuthDataModel.fromJson(json['data']),
    );
  }
}
