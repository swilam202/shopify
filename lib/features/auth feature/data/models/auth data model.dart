import 'package:hhhhhhhh/features/auth%20feature/domain/entites/auth%20data.dart';

class AuthDataModel extends AuthData {
  const AuthDataModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.image,
    required super.token,
  });

  factory AuthDataModel.fromJson(Map<String, dynamic> json) {
    return AuthDataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      token: json['token'],
      image: json['image'],
    );
  }
}
