import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemArgs = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(240, 26, 7, 238),
        title: const Text('Shopping list'),
      ),
      body: Container(
        child: Column(
          children: [Text(ItemArgs["name"])],
        ),
      ),
    );
  }
}
