import 'package:hhhhhhhh/features/details%20feature/domain/entites/product%20details.dart';

class ProductDetailsModel extends ProductDetails {
  ProductDetailsModel({
    required super.id,
    required super.inFavorites,
    required super.inCart,
    required super.price,
    required super.oldPrice,
    required super.discount,
    required super.name,
    required super.description,
    required super.images,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel(
      id: json['id'],
      inFavorites: json['in_favorites'],
      inCart: json['in_cart'],
      price: json['price'],
      oldPrice: json['old_price'],
      discount: json['discount'],
      name: json['name'],
      description: json['description'],
      images: json['images'],
    );
  }
}
