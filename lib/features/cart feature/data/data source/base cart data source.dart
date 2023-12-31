import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/model/address%20model.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/model/cart%20model.dart';
import 'package:hhhhhhhh/features/cart%20feature/data/model/update%20cart%20model.dart';
import 'package:hhhhhhhh/features/cart%20feature/domain/entites/update%20cart.dart';

import '../../../../core/services/api/server exception.dart';
import '../model/add remove cart model.dart';
import 'package:http/http.dart' as http;
abstract class BaseCartDataSource{
  Future<AddRemoveCartModel> postAddRemoveCart(int productId);
  Future<CartModel> getCart();
  Future< AddressModel> getAddress();
  Future<UpdateCartModel> updateCart(int quantity,int id);

}


class CartDataSource extends BaseCartDataSource{
  APIServices apiServices = APIServices();
  @override
  Future<AddRemoveCartModel> postAddRemoveCart(int productId) async {
    http.Response response = await apiServices.post(
      url: 'https://student.valuxapps.com/api/carts',
      body: {
        "product_id": productId,
      },
    );

    if (response.statusCode == 200) {
      AddRemoveCartModel model = AddRemoveCartModel.fromJson(jsonDecode(response.body));

      print('++++++++++++++++++++++++++++++++++++++++++++++');
      print(model.message);
      return model;

    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }
  
  @override
  Future<CartModel> getCart() async{
http.Response response = await apiServices.get(
      url: 'https://student.valuxapps.com/api/carts',
    );


if (response.statusCode == 200) {
      CartModel model = CartModel.fromJson(jsonDecode(response.body));


      return model;

    } else {
      throw ServerException(jsonDecode(response.body));
    }

  }
  
  @override
  Future<UpdateCartModel> updateCart(int quantity,int id) async {
    http.Response response = await apiServices.put(
      url: 'https://student.valuxapps.com/api/carts/$id',
      body: {
        "quantity": quantity,
      },
    );

    if (response.statusCode == 200) {
      UpdateCartModel model = UpdateCartModel.fromJson(jsonDecode(response.body));


      return model;

    } else {
      throw ServerException(jsonDecode(response.body));
    }
  }

  @override
  Future< AddressModel> getAddress() async{
    http.Response response = await apiServices.get(
      url: 'https://student.valuxapps.com/api/addresses',
    );


    if (response.statusCode == 200) {
      AddressModel model = AddressModel.fromJson(jsonDecode(response.body)['data']['data'][0],);


      return model;

    } else {
      throw ServerException(jsonDecode(response.body));
    }

  }

}