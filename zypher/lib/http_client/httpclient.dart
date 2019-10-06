import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zypher/model/base_model.dart';
class HttpClient {

  // Generic Function to Get data via Rest Api using http client
  static Future<BaseModel>get(String  url)async
  {
    return await http.get(Uri.encodeFull(url), headers: {
      'content-type': 'application/json',
      'accept': 'application/json',
    }).then((http.Response response) {
      final int statusCode = response.statusCode;
      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw Exception('Error while fetching data');
      }
      return BaseModel.fromJson(response.body);
    });


  }





}