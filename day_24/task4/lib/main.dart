import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuantityScreen(),
    );
  }
}

class QuantityScreen extends StatefulWidget {
  const QuantityScreen({super.key});

  @override
  State<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends State<QuantityScreen> {

  // State
  int quantity = 1;

  // Increase quantity
  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  // Decrease quantity
  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quantity Selector'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Quantity Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Minus Button
                ElevatedButton(
                  onPressed: decreaseQuantity,
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25),
                  ),
                ),

                const SizedBox(width: 25),

                // Current Quantity
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(width: 25),

                // Plus Button
                ElevatedButton(
                  onPressed: increaseQuantity,
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Total Items
            Text(
              'Total Items: $quantity',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}