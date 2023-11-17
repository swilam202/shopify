import 'dart:convert';

import 'package:hhhhhhhh/features/search%20feature/data/model/products%20model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/services/api/api services.dart';
import '../../../../core/services/api/server exception.dart';

abstract class BaseSearchDataSource {
  Future<List<ProductsModel>?> postSearch(String keyword);
  Future<List<ProductsModel>?> getCategoryProducts(int id);
}
class SearchDataSource extends BaseSearchDataSource{

  APIServices apiServices = APIServices();


  @override
  Future<List<ProductsModel>?> getCategoryProducts(int id) async {
    http.Response response = await apiServices.get(
        url: 'https://student.valuxapps.com/api/products?category_id=$id');
    if (response.statusCode == 200) {
      List<ProductsModel> productsModel = List.from(
        ((jsonDecode(response.body)['data']['data']) as List).map(
              (e) => ProductsModel.fromJson(e),
        ),
      );

      return productsModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }

  @override
  Future<List<ProductsModel>?> postSearch(String keyword) async {
    http.Response response = await apiServices.post(
      url: 'https://student.valuxapps.com/api/products/search',
      body: {
        "text": keyword,
      },
    );

    if (response.statusCode == 200) {
      List<ProductsModel> productsModel = List.from(
        ((jsonDecode(response.body)['data']['data']) as List).map(
              (e) => ProductsModel.fromJson(e),
        ),
      );

      return productsModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }

}