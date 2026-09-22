import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> products = [
    Product(
      id: 1,
      name: "iPhone",
      price: 80000,
      description: "Apple smartphone with powerful performance.",
    ),
    Product(
      id: 2,
      name: "Headphone",
      price: 5000,
      description: "Wireless headphone with clear sound.",
    ),
    Product(
      id: 3,
      name: "Smart Watch",
      price: 7000,
      description: "Smart watch with fitness tracking features.",
    ),
  ];

  Future<void> openProduct(Product product) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          product: product,
        ),
      ),
    );

    if (result == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Added to cart successfully"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(product.name),
              subtitle: Text("Price: ৳${product.price}"),
              trailing: ElevatedButton(
                onPressed: () {
                  openProduct(product);
                },
                child: const Text("Details"),
              ),
            ),
          );
        },
      ),
    );
  }
}