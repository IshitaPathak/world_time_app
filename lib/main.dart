import 'package:flutter/material.dart';
import 'package:project4/pages/home.dart';
import 'package:project4/pages/loading.dart';
import 'package:project4/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
