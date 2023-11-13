import 'dart:convert';

import 'package:hhhhhhhh/core/services/api/api%20services.dart';
import 'package:hhhhhhhh/core/services/api/server%20exception.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/change%20password%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/login%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/logout%20model.dart';
import 'package:hhhhhhhh/features/auth%20feature/data/models/register%20model.dart';
import 'package:http/http.dart' as http;

abstract class BaseAuthDataSource {
  Future<LoginModel> postLogin({
    required String email,
    required String password,
  });
  Future<ChangePasswordModel> postChangePassword({
    required String currentPassword,
    required String newPassword,
    required String token,
  });
  Future<LogoutModel> postLogout({
    required String token,
  });
  Future<RegisterModel> postRegister({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String image,
  });
}

class AuthDataSource extends BaseAuthDataSource {
  APIServices apiServices = APIServices();

  @override
  Future<ChangePasswordModel> postChangePassword({
    required String currentPassword,
    required String newPassword,
    required String token,
  }) async {
    http.Response response = await apiServices.post(
      url: '',
      body: {
        "current_password": currentPassword,
        "new_password": newPassword,
      },
      token: token,
    );

    if (response.statusCode == 200) {
      ChangePasswordModel model =
          ChangePasswordModel.fromJson(jsonDecode(response.body));
      return model;
    } else {
      throw ServerException(response.body);
    }
  }

  @override
  Future<LoginModel> postLogin({
    required String email,
    required String password,
  }) async {
    http.Response response = await apiServices.post(
      url: 'https://student.valuxapps.com/api/login',
      body: {
        "email": email,
        "password": password,
      },
    );

    print("response: $response");

    if (response.statusCode == 200) {
      LoginModel model = LoginModel.fromJson(jsonDecode(response.body));
      print("model: $model");
      return model;

    } else {
      throw ServerException(response.body);
    }
  }

  @override
  Future<LogoutModel> postLogout({required String token}) async {
    http.Response response = await apiServices.post(
      url: '',
      body: {},
      token: token,
    );

    if (response.statusCode == 200) {
      LogoutModel model = LogoutModel.fromJson(jsonDecode(response.body));
      return model;
    } else {
      throw ServerException(response.body);
    }
  }

  @override
  Future<RegisterModel> postRegister({
    required String name,
    required String phone,
    required String email,
    required String password,
    required String image,
  }) async {
    http.Response response = await apiServices.post(
      url: 'https://student.valuxapps.com/api/register',
      body: {
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "image": image,
      },
    );

    if (response.statusCode == 200) {
      RegisterModel model = RegisterModel.fromJson(jsonDecode(response.body));
      return model;
    } else {
      throw ServerException(response.body);
    }
  }
}
