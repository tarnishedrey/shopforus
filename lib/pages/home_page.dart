import 'package:flutter/material.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Zam zam', price: 5000, description: "Sumbing dikit ga ngaruh"),
    Item(name: 'Pasha', price: 10000, description: "-Skena")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: ((context, index) {
              final item = items[index];
              var itemss = {
                "name": item.name,
                "price": item.price,
                "description": item.description
              };
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/item', arguments: itemss);
                },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.name)),
                        Expanded(
                            child: Text(item.price.toString(),
                                textAlign: TextAlign.center)),
                        Expanded(
                            child: Text(
                          item.description,
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
