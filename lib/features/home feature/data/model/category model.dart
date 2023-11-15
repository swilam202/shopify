import 'package:hhhhhhhh/features/home%20feature/data/model/category%20data%20model.dart';
import 'package:hhhhhhhh/features/home%20feature/domain/entites/category.dart';

class CategoryModel extends Category {
  CategoryModel({
    required super.status,
    required super.categoryData,
    super.message,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      status: json['status'],
      message: json['message'] == null ? null : json['message'],
      categoryData: List.from(
        (json['data']['data'] as List).map(
          (e) => CategoryDataModel.fromJson(e),
        ),
      ),
    );
  }
}
