import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart_ui.dart';
import "profile_ui.dart";

class ProductUI extends StatelessWidget {
  const ProductUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 241, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(235, 240, 255, 1),
        title: Row(
          children: [
            const Text(
              "Online Shop",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_add_outlined),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recommendation",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.grid_view_outlined, size: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              'assets/images/images.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "iPhone 12",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ),
                          );
                        },

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 185,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 230, 255, 1),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Image.asset(
                                "assets/images/download.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(height: 6),

                            const Text(
                              "Hoodi",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$765.00",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                SizedBox(
                                  height: 24,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      minimumSize: Size.zero,
                                      tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: const Text(
                                      "Buy",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "assets/images/watch.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Watch",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$566.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "assets/images/417RKvhOFGL._AC_UY1000_.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Sneakers",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              'assets/images/T-shirt.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "T-shirt",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "assets/images/body spray.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Body spray",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              'assets/images/hand wash.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "HandWash",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 185,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 230, 255, 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "assets/images/face creams.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Text(
                            "Face creams",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$765.00",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(
                                height: 24,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Body
                // Products
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        top: false,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(225, 250, 255, 1),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,

          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartUI(),
                ),
              );
            }

            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileUI(),
                ),
              );
            }
          },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
