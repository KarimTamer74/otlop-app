// filter_products_screen.dart
import 'package:flutter/material.dart';
import 'package:otlop_app/home_products_section.dart';

class FilterProductsScreen extends StatelessWidget {
  const FilterProductsScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(title),
      ),
      body: HomeProductsSection(),
    );
  }
}
