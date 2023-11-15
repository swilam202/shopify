import 'package:hhhhhhhh/features/home%20feature/domain/entites/trending.dart';

class TrendingModel extends Trending {
  TrendingModel({
    required super.id,
    required super.price,
    required super.oldPrice,
    required super.discount,
    required super.image,
  });

  factory TrendingModel.fromJson(Map<String, dynamic> json) {
    return TrendingModel(
      id: json['id'],
      price: json['price'],
      oldPrice: json['old_price'],
      discount: json['discount'],
      image: json['image'],
    );
  }
}
