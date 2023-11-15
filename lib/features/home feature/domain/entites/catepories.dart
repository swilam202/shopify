import 'category data.dart';

class Categories {
  final bool status;
  final String? message;
  final CategoryData categoryData;

  Categories({
    required this.status,
    this.message,
    required this.categoryData,
  });
}
