import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';

class Cart {
  final bool status;
  final String? message;
  final List<CartData>? data;
  final num? total;

  Cart({
    required this.status,
    this.message,
    this.data,
    this.total,
  });
}
