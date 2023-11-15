import 'category data.dart';

class Category {
  final bool status;
  final String? message;
  final List<CategoryData> categoryData;

  Category({
    required this.status,
    this.message,
    required this.categoryData,
  });
}
