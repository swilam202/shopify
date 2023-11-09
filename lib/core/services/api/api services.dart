import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices {
  Map<String, String> headers = {
    'lang': 'en',
    'Content-Type': 'application/json',
  };

  Future<http.Response> get({required String url}) async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri, headers: headers);
    return response;

    /*Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    return data;*/
  }

  Future<http.Response> post({
    required String url,
    required Map<String, dynamic> body,
    String? token,
  }) async {
    if (token != null) {
      headers.addAll({'Authorization': token});
    }
    Uri uri = Uri.parse(url);
    http.Response response = await http.post(
      uri,
      body: body,
      headers: headers,
    );
    return response;
    /*Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    return data;*/
  }
}
