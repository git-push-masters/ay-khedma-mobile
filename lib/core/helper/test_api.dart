import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class TestApi extends StatefulWidget {
  const TestApi({super.key});

  @override
  State<TestApi> createState() => _TestApiState();
}

Future _registerUser() async {
  log("enter method");
  const baseUrl = "https://ay-khedma-backend-development.up.railway.app/";

  Map<String, String> headers = {};
  headers.addAll({
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  });
  Map<String, dynamic> body = {
    "phone": "01214919301",
    "password": "1234567",
  };
   String data= jsonEncode(body);
  log("wait to response");
  var response = await http.post(
      Uri.parse("https://ay-khedma-backend-development.up.railway.app/api/auth/login"),
      body: data,
      headers: headers);
  log("response get it");
  if (response.statusCode == 200) {
    log("success");
    Map<String, dynamic> data = jsonDecode(response.body);
    log(data.toString());
  } else {
    log(response.statusCode.toString());
  }
}

class _TestApiState extends State<TestApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _registerUser();
            },
            child: const Text("Check")),
      ),
    );
  }
}
