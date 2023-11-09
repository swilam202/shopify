import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register%20data.dart';

class RegisterDataModel extends RegisterData {
  RegisterDataModel({
    required super.id,
    required super.name,
    required super.phone,
    required super.email,
    required super.token,
    required super.image,
  });

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) {
    return RegisterDataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      token: json['token'],
      image: json['image'],
    );
  }
}
