import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';

class CartDataModel extends CartData {
  CartDataModel({
    required super.id,
    required super.quantity,
    required super.price,
    required super.image,
    required super.name,
  });

  factory CartDataModel.fromJson(Map<String, dynamic> json) {
    return CartDataModel(
      id: json['id'],
      quantity: json['quantity'],
      price: json['product']['price'],
      image: json['product']['image'],
      name: json['product']['name'],
    );
  }
}
