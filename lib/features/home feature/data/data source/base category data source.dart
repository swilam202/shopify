import 'dart:convert';

import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/home%20feature/data/model/category%20model.dart';
import 'package:http/http.dart' as http;

abstract class BaseCategoryDataSource {
  Future<CategoryModel> getCategory();
}

class CategoryDataSource extends BaseCategoryDataSource {
  @override
  Future<CategoryModel> getCategory() async {
    http.Response response = await APIServices()
        .get(url: 'https://student.valuxapps.com/api/categories');
    if (response.statusCode == 200) {
      CategoryModel categoryModel =
          CategoryModel.fromJson(jsonDecode(response.body));
      return categoryModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }
}
