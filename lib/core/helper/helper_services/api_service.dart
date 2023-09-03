import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  final _baseUrl = "";
  final Dio _dio;

  // get request to fetch data
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await _dio.get("$_baseUrl$endPoint");
    var data = jsonDecode(response.data);
    return data;
  }

  // post request to post new data
  Future<dynamic> post({required endPoint, @required dynamic body}) async {
   var response = await _dio.post("$_baseUrl$endPoint", data: body);
   var data = jsonDecode(response.data);
   return data;
  }

  // put request to update data

  Future<dynamic> put({required endPoint, @required dynamic body}) async {
   var response = await _dio.put("$_baseUrl$endPoint", data: body);
   var data = jsonDecode(response.data);
   return data;
  }
  
  Future<dynamic> delete({required endPoint, @required dynamic body}) async {
   var response = await _dio.delete("$_baseUrl$endPoint", data: body);
   var data = jsonDecode(response.data);
   return data;
  }


  // Future<dynamic> put({
  //   required String url,
  //   @required dynamic body,
  // }) async {
  //   http.Response response = await http.put(Uri.parse(url), body: body);
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body);
  //     return data;
  //   } else {
  //     throw Exception(
  //         "there is throw with erorr ${response.statusCode} , with body ${jsonDecode(response.body)}");
  //   }
  // }
}
