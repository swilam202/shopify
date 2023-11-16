import 'dart:convert';

import 'package:hhhhhhhh/core/services/api/api%20services.dart';

import '../../../../core/services/api/server exception.dart';
import '../model/add remove cart model.dart';
import 'package:http/http.dart' as http;
abstract class BaseCartDataSource{
  Future<AddRemoveCartModel> postAddRemoveCart(String productId);

}


class CartDataSource extends BaseCartDataSource{
  APIServices apiServices = APIServices();
  @override
  Future<AddRemoveCartModel> postAddRemoveCart(String productId) async {
    http.Response response = await apiServices.post(
      url: 'https://student.valuxapps.com/api/carts',
      body: {
        "product_id": productId,
      },
    );

    if (response.statusCode == 200) {
      AddRemoveCartModel model = AddRemoveCartModel.fromJson(jsonDecode(response.body));


      return model;

    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }

}