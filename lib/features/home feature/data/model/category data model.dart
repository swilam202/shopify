import 'package:hhhhhhhh/features/home%20feature/domain/entites/category%20data.dart';

class CategoryDataModel extends CategoryData {
  CategoryDataModel({
    required super.id,
    required super.name,
    required super.image,
  });
  factory CategoryDataModel.fromJson(Map<String, dynamic> json) {
    return CategoryDataModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
