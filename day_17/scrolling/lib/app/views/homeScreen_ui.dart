import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
          expandedHeight: 110,
         // collapsedHeight: 110,
         //   pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello, User",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Welcome back!",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    const Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Search Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      "Search products...",
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Categories Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return CategoryCard(
                          category: categories[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Popular Products Title
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Popular Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          // Popular Products Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return ProductCard(
                    product: products[index],
                  );
                },
                childCount: products.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
            ),
          ),
          // Recommended Products Title
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Recommended For You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          // Recommended Products List
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ProductListTile(
                    product: products[index],
                  ),
                );
              },
              childCount: 3,
            ),
          ),






        ],
      ),
    );
  }
}

// Category Card
class CategoryCard extends StatelessWidget {
  final String category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Categories Data
final categories = [
  "Electronics",
  "Fashion",
  "Shoes",
  "Books",
  "Sports",
  "Beauty",
];

// Product Card
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                product.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            "\$${product.price}",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

// Product Model
class Product {
  final String name;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.image,
  });
}

// Product Data
final products = [
  Product(
    name: "Wireless Headphone",
    price: 45,
    image: "assets/images/headphone.jpg",
  ),
  Product(
    name: "Running Shoes",
    price: 60,
    image: "assets/images/shoes.jpg",
  ),
  Product(
    name: "Smart Watch",
    price: 80,
    image: "assets/images/watch.jpg",
  ),
  Product(
    name: "Backpack",
    price: 35,
    image: "assets/images/bag.jpg",
  ),
  Product(
    name: "Sunglasses",
    price: 25,
    image: "assets/images/sunglass.jpg",
  ),
  Product(
    name: "T-Shirt",
    price: 20,
    image: "assets/images/shirt.jpg",
  ),
];

// Product List Tile
class ProductListTile extends StatelessWidget {
  final Product product;

  const ProductListTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              product.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "High quality product for everyday use.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



/* import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, User",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 10),
                      Text(
                        "Search products...",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Categories Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Categories
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        category: categories[index],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // Popular Products Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Popular Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Popular Products Grid
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                    );
                  },
                ),

                const SizedBox(height: 20),

                // Recommended Products Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended For You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Recommended Products List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductListTile(
                      product: products[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Category Card
class CategoryCard extends StatelessWidget {
  final String category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          category,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Categories Data
final categories = [
  "Electronics",
  "Fashion",
  "Shoes",
  "Books",
  "Sports",
  "Beauty",
];

// Product Card
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                product.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            "\$${product.price}",
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

// Product Model
class Product {
  final String name;
  final double price;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.image,
  });
}

// Product Data
final products = [
  Product(
    name: "Wireless Headphone",
    price: 45,
    image: "assets/images/headphone.jpg",
  ),
  Product(
    name: "Running Shoes",
    price: 60,
    image: "assets/images/shoes.jpg",
  ),
  Product(
    name: "Smart Watch",
    price: 80,
    image: "assets/images/watch.jpg",
  ),
  Product(
    name: "Backpack",
    price: 35,
    image: "assets/images/bag.jpg",
  ),
  Product(
    name: "Sunglasses",
    price: 25,
    image: "assets/images/sunglass.jpg",
  ),
  Product(
    name: "T-Shirt",
    price: 20,
    image: "assets/images/shirt.jpg",
  ),
];

// Product List Tile
class ProductListTile extends StatelessWidget {
  final Product product;

  const ProductListTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              product.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  "High quality product for everyday use.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/