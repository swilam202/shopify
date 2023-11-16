import 'package:hhhhhhhh/features/cart%20feature/domain/entites/add%20remove%20cart.dart';

class AddRemoveCartModel extends AddRemoveCart {
  AddRemoveCartModel({
    required super.status,
    required super.message,
  });

  factory AddRemoveCartModel.fromJson(Map<String, dynamic> json) {
    return AddRemoveCartModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
