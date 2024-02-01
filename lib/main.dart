import 'package:flutter/material.dart';
import 'package:shopforourfuture/pages/home_page.dart';
import 'package:shopforourfuture/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
