import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APIProvider extends ChangeNotifier {
  getData() async {
    print('Start');
    try {
      http.Response data = await http.get(
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?category=sports&apiKey=8617b2e7ed1f43aeaaff85019305bc38'),
      );
      print('Response done');
      if (data.statusCode == 200) {
        log(json.decode(data.body)['articles'].toString());
      } else {
        print(json.decode(data.body)['message']);
      }
    } on SocketException {
      print('Network error');
    } catch (e) {
      print(e.toString());
    }
  }
}
/*

'{}'

 */
