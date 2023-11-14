import 'package:hhhhhhhh/features/auth%20feature/data/models/register%20data%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/domain/entites/register.dart';

class RegisterModel extends Register {
  RegisterModel({
    required super.status,
    required super.message,
     super.data,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      status: json['status'],
      message: json['message'],
      data: json['data'] == null ? null:RegisterDataModel.fromJson(json['data']),
    );
  }
}
