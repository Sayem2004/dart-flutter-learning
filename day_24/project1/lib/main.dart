import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ====================
// MyApp
// ====================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ShoppingCartScreen(),
    );
  }
}

// ====================
// Product Model
// ====================

class Product {
  final int id;
  final String name;
  final double price;
  int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}

// ====================
// Shopping Cart Screen
// ====================

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {

  // Product State
  final List<Product> products = [
    Product(
      id: 1,
      name: 'T-Shirt',
      price: 20,
    ),
    Product(
      id: 2,
      name: 'Shoes',
      price: 30,
    ),
    Product(
      id: 3,
      name: 'Watch',
      price: 25,
    ),
  ];

  // Cart State
  final List<Product> cart = [];

  // ====================
  // Increase Quantity
  // ====================

  void increaseQuantity(Product product) {
    setState(() {
      product.quantity++;
    });
  }

  // ====================
  // Decrease Quantity
  // ====================

  void decreaseQuantity(Product product) {
    if (product.quantity > 1) {
      setState(() {
        product.quantity--;
      });
    }
  }

  // ====================
  // Add To Cart
  // ====================

  void addToCart(Product product) {
    setState(() {
      final existingProduct = cart.where(
            (item) => item.id == product.id,
      );

      if (existingProduct.isNotEmpty) {
        existingProduct.first.quantity += product.quantity;
      } else {
        cart.add(
          Product(
            id: product.id,
            name: product.name,
            price: product.price,
            quantity: product.quantity,
          ),
        );
      }
    });
  }

  // ====================
  // Cart Item Count
  // ====================

  int get totalCartItems {
    int total = 0;

    for (final product in cart) {
      total += product.quantity;
    }

    return total;
  }

  // ====================
  // Cart Total Price
  // ====================

  double get totalPrice {
    double total = 0;

    for (final product in cart) {
      total += product.price * product.quantity;
    }

    return total;
  }

  // ====================
  // Build UI
  // ====================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ====================
            // Cart Count
            // ====================

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue.shade50,
              ),
              child: Text(
                'Cart Items: $totalCartItems',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ====================
            // Product Title
            // ====================

            const Text(
              'Products',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // ====================
            // Product List
            // ====================

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return ProductCard(
                  product: product,

                  onIncrease: () {
                    increaseQuantity(product);
                  },

                  onDecrease: () {
                    decreaseQuantity(product);
                  },

                  onAddToCart: () {
                    addToCart(product);
                  },
                );
              },
            ),

            const SizedBox(height: 25),

            // ====================
            // Cart Summary
            // ====================

            const Text(
              'Cart Summary',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'Items: $totalCartItems',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Total: \$${totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ====================
            // Cart Products
            // ====================

            if (cart.isNotEmpty) ...[
              const Text(
                'Cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              ...cart.map(
                    (product) {
                  return Card(
                    child: ListTile(
                      title: Text(product.name),
                      subtitle: Text(
                        'Quantity: ${product.quantity}',
                      ),
                      trailing: Text(
                        '\$${(product.price * product.quantity).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],

            if (cart.isEmpty) ...[
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Your cart is empty',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ====================
// Reusable Product Card
// ====================

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    required this.onIncrease,
    required this.onDecrease,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Product Name
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Product Price
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 17,
              ),
            ),

            const SizedBox(height: 15),

            // Quantity Selector
            Row(
              children: [

                IconButton(
                  onPressed: onDecrease,
                  icon: const Icon(Icons.remove),
                ),

                Text(
                  '${product.quantity}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  onPressed: onIncrease,
                  icon: const Icon(Icons.add),
                ),

                const Spacer(),

                // Add To Cart
                ElevatedButton(
                  onPressed: onAddToCart,
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}