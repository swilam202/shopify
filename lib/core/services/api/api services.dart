import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices {
  Map<String, String> headers = {
    'lang': 'en',
    'Content-Type': 'application/json',
  };

  Future<Map<String, dynamic>> get(String url) async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri, headers: headers);
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    return data;
  }

  Future<Map<String, dynamic>> post(
    String url,
    Map<String, dynamic> body,
    String? token,
  ) async {
    if (token != null) {
      headers.addAll({'token': token});
    }
    Uri uri = Uri.parse(url);
    http.Response response = await http.post(
      uri,
      body: body,
      headers: headers,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    return data;
  }
}
