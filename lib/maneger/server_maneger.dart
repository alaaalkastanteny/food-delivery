import 'dart:convert';

import 'package:http/http.dart' as http;

class ServerManeger {
  static Future<String?> getChoosingchainofrestaurants() async {
    http.Response response = await http
        .get(Uri.parse("https://bs.warshatec.com/public/api/restaurant/1"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }
  /* static Future<String?> grtrestaurants() async {
    http.Response response = await http
        .get(Uri.parse("https://bs.warshatec.com/public/api/restaurant/1"));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }*/
}
