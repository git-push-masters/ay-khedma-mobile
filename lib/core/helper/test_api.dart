

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class TestApi extends StatefulWidget {
  const TestApi({super.key});

  @override
  State<TestApi> createState() => _TestApiState();
}
 

 Future<dynamic> _registerUser() async
 {

  log("enter method");
  const baseUrl = "http://192.168.1.26:4000/api";

    Map<String, String> headers = {};
      headers.addAll({
        'Content-Type' : 'application/json',
        });
    Map<String, dynamic> body= {
      "name": "Ebrahim",
      "phone": "01016393895",
      "password": "01233210",
    };
    log("wait to response");
    http.Response response = await http.post(Uri.parse("$baseUrl""/auth/register"),
        body: jsonEncode(body), headers: headers);
    log("response get it");    
    if(response.statusCode == 201){
      log("201");
      var data = jsonDecode(response.body);
      log(data);
          }else
          {
            log("failure");
          }
 }
class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            _registerUser();
          },
          child:const Text("Check")),
      ),
    );
  }
}