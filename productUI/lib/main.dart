import 'package:flutter/material.dart';
import 'app/view/product_ui.dart';
import 'app/view/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Product_UI",
      home: ProductUI(),
    );
  }
}