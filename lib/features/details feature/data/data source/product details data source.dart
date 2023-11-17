import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../core/services/api/api services.dart';
import '../../../../core/services/api/server exception.dart';
import '../model/product detials model.dart';

abstract class BaseProductDetailsDataSource{
  Future<ProductDetailsModel> getProductDetails(int id);

}

class ProductDetailsDataSource extends BaseProductDetailsDataSource{
  APIServices apiServices = APIServices();

  @override
  Future<ProductDetailsModel> getProductDetails(int id) async {
    http.Response response = await apiServices.get(
        url: 'https://student.valuxapps.com/api/products/$id');
    if (response.statusCode == 200) {
      ProductDetailsModel productsModel = (jsonDecode(response.body)['data']);

      return productsModel;
    } else {
      throw ServerException(jsonDecode(response.body));
    }
}



  }