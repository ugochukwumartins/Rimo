import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rimo/models/signInModel.dart';

class Services {
  static const String url = "localhost:8080/api/v1/auth/signin";
  Future SentData(String email, String Passwors) async {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': Passwors,
      }),
    );
    if (response.statusCode == 200) {
    } else {}
  }
}
