import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart.dart';

import 'cart data model.dart';

class CartModel extends Cart {
  CartModel({
    required super.status,
    super.message,
    super.data,
    super.total,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      status: json['status'],
      total: json['data']['total'],
      data: List.from(
        (json['data']['cart_items'] as List).map(
          (e) => CartDataModel.fromJson(e),
        ),
      ),
      message: json['message'],
    );
  }
}
