import "package:flutter/material.dart";

class CheckoutUI extends StatelessWidget {
  const CheckoutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 241, 255, 1),

      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 240, 255, 1),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),

        title: const Text(
          "Checkout",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),

        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 28),

                const Text(
                  "Payment method",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.radio_button_checked,
                            size: 20,
                          ),

                          const SizedBox(width: 12),

                          const Icon(
                            Icons.credit_card,
                            size: 24,
                          ),

                          const SizedBox(width: 12),

                          const Text(
                            "Card",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          const Icon(
                            Icons.radio_button_unchecked,
                            size: 20,
                          ),

                          const SizedBox(width: 12),

                          const Icon(
                            Icons.account_balance,
                            size: 24,
                          ),

                          const SizedBox(width: 12),

                          const Text(
                            "Bank account",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                const Text(
                  "Delivery method",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 12),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.radio_button_checked,
                            size: 20,
                          ),

                          const SizedBox(width: 12),

                          const Icon(
                            Icons.local_shipping_outlined,
                            size: 24,
                          ),

                          const SizedBox(width: 12),

                          const Text(
                            "Door delivery",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        children: [
                          const Icon(
                            Icons.radio_button_unchecked,
                            size: 20,
                          ),

                          const SizedBox(width: 12),

                          const Icon(
                            Icons.store_outlined,
                            size: 24,
                          ),

                          const SizedBox(width: 12),

                          const Text(
                            "Pick up",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const Text(
                      "10120.00 tk",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(
                        255,
                        70,
                        60,
                        1,
                      ),
                      foregroundColor: Colors.white,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    child: const Text(
                      "Proceed to payment",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
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

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.chair_alt_outlined),
              label: "Cart",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Person",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}