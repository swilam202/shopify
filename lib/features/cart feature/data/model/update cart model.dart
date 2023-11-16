import 'package:hhhhhhhh/features/cart%20feature/domain/entites/update%20cart.dart';

class UpdateCartModel extends UpdateCart {
  UpdateCartModel({
    required super.status,
    required super.messaga,
  });

  factory UpdateCartModel.fromJson(Map<String, dynamic> json) {
    return UpdateCartModel(
      status: json['status'],
      messaga: json['message'],
    );
  }
}
