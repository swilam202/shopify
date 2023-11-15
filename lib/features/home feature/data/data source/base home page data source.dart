import 'dart:convert';

import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/home%20feature/data/model/category%20model.dart';
import 'package:hhhhhhhh/features/home%20feature/data/model/trending%20model.dart';
import 'package:http/http.dart' as http;

abstract class BaseHomePageDataSource {
  Future<CategoryModel> getCategory();
  Future<List<TrendingModel>> getTrending();
}

class HomePageDataSource extends BaseHomePageDataSource {
  APIServices apiServices = APIServices();

  @override
  Future<CategoryModel> getCategory() async {
    http.Response response = await apiServices.get(
        url: 'https://student.valuxapps.com/api/categories');
    if (response.statusCode == 200) {
      CategoryModel categoryModel =
          CategoryModel.fromJson(jsonDecode(response.body));

      return categoryModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }

  @override
  Future<List<TrendingModel>> getTrending() async {
    http.Response response =
        await apiServices.get(url: 'https://student.valuxapps.com/api/home');
    if (response.statusCode == 200) {
        var a = jsonDecode(response.body);

      List<TrendingModel> trendingModel = List.from(
        ((jsonDecode(response.body)['data']['products']) as List).map(
          (e) => TrendingModel.fromJson(e),
        ),
      );

      return trendingModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }
}
