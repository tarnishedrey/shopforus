import 'package:flutter/material.dart';
import '../models/item.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _imageUrlController.dispose();
    super.dispose();
  }

  void _submitNewItem() {
    final String name = _nameController.text;
    final int price = int.tryParse(_priceController.text) ?? 0;
    final String description = _descriptionController.text;
    final String imageUrl = _imageUrlController.text;

    if (name.isNotEmpty &&
        price > 0 &&
        description.isNotEmpty &&
        imageUrl.isNotEmpty) {
      final Item newItem = Item(
        name: name,
        price: price,
        description: description,
        imageUrl: imageUrl,
      );

      //

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('New item created successfully'),
        ),
      );

      _nameController.clear();
      _priceController.clear();
      _descriptionController.clear();
      _imageUrlController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all fields'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Item Name'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _imageUrlController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitNewItem,
              child: Text('Add Item'),
            ),
          ],
        ),
      ),
    );
  }
}
