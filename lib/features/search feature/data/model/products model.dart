import 'package:hhhhhhhh/features/search%20feature/domain/entites/category%20products.dart';

class ProductsModel extends Products {
  ProductsModel({
    required super.id,
    required super.price,
    required super.image,
    required super.name,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
    );
  }
}
