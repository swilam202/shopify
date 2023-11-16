import 'package:hhhhhhhh/features/cart%20feature/domain/entites/cart%20data.dart';

class Cart {
  final bool status;
  final String? message;
  final CartData? data;

  Cart({
    required this.status,
    this.message,
    this.data,
  });
}
