import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api 
{

  // get request to fetch data
  Future<dynamic> get({required String url}) async {
    http.Response response =
        await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    }
    else {
      throw Exception("there is throw with erorr ${response.statusCode}");
    }
  }

   
   // post request to post new data
  Future<dynamic> post({required String url , @required dynamic body}) async {
    http.Response response =
        await http.post(Uri.parse(url), body: body);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return data;
    }else{
       throw Exception("there is throw with erorr ${response.statusCode}");
    }
  }


     // put request to update data
  Future<dynamic> put({required String url , @required dynamic body, }) async {
    http.Response response =
        await http.put(Uri.parse(url), body: body);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      return data;
    }else{
       throw Exception("there is throw with erorr ${response.statusCode} , with body ${jsonDecode(response.body)}");
    }
  }
}