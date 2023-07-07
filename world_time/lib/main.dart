import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    // home: Home(),
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/locations': (context) => ChooseLocation(),
    },
  ));
}
