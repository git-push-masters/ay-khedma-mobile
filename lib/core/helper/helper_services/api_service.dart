import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ApiService {
  final _baseUrl = "https://ay-khedma-backend-development.up.railway.app/api/";


  // get request to fetch data
  ApiService();

  Future<Map<String, dynamic>> get({required endPoint}) async {
    var response = await http.get(Uri.parse("$_baseUrl$endPoint"));
    var data = jsonDecode(response.body);
    return data;
  }

  // post request to post new data
  Future<Map<String, dynamic>> post(
      {required endPoint,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
        'Content-Type' : 'application/json',
        'Accept': 'application/json',
        });
    }
    var response = await http.post(Uri.parse("$_baseUrl$endPoint"),
        body: body, headers: headers);
    if(response.statusCode == 201 || response.statusCode == 200){
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    }else
    {
      throw response.body;
    }
  }

  // put request to update data

  // Future<dynamic> put(
  //     {required endPoint,
  //     @required dynamic body,
  //     @required String? token}) async {
  //   Map<String, dynamic> headers = {};
  //   if (token != null) {
  //     headers.addAll({'Authorization': 'Bearer $token'});
  //   }
  //   var response = await _dio.put("$_baseUrl$endPoint",
  //       data: body, options: Options(headers: headers));
  //   var data = jsonDecode(response.data);
  //   return data;
  // }

  // Future<dynamic> delete({required endPoint, @required dynamic body}) async {
  //   var response = await _dio.delete("$_baseUrl$endPoint", data: body);
  //   var data = jsonDecode(response.data);
  //   return data;
  // }

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
