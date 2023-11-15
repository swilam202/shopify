import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices {
  Map<String, String> headers = {
    'Accept':'*/*',
    'Connection':'keep-alive',
    'Accept-Encoding':'gzip, deflate, br',
    'lang': 'ar',
    'Content-Type': 'application/json',
  };

  Future<http.Response> get({required String url}) async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri, headers: headers);
    print('++++++++++++++++++++++++++++++++++++++');
print(response);
print('++++++++++++++++++++++++++++++++++++++');
    return response;




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
      body: jsonEncode(body),
      headers: headers,
    );


    return response;

  }
}
