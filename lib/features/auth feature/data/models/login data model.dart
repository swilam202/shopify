import 'package:hhhhhhhh/features/auth%20feature/domain/entites/login%20data.dart';

class LoginDataModel extends LoginData {
  const LoginDataModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.image,
    required super.token,
  });

  factory LoginDataModel.fromJson(Map<String, dynamic> json) {
    return LoginDataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      token: json['token'],
      image: json['image'],
    );
  }
}
