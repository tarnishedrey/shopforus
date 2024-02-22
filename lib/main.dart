import 'package:flutter/material.dart';
import 'package:shopforourfuture/pages/home_page.dart';
import 'package:shopforourfuture/pages/item_page.dart';
import 'package:shopforourfuture/pages/admin_page.dart';
import 'package:shopforourfuture/models/item.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(
            item: Item(
              name: 'Default Item',
              price: 0,
              description: 'Default Description',
              imageUrl: 'www.rawr.com',
            ),
          ),
      '/admin': (context) => AdminPage(),
    },
  ));
}
