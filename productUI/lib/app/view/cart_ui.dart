import 'package:flutter/material.dart';
import 'checkout_ui.dart';

class CartUI extends StatelessWidget {
  const CartUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 241, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(235, 240, 255, 1),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("My Cart",
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 240, 190, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/download.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hoodi",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 6),
                            const Text("Price: 609.00 tk",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 166, 0, 1),),
                            ),
                            const SizedBox(height: 6),

                            const Text("Color: Black",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Size: XL",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove),
                                    ),

                                    const Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete_outline),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),

                    ],
                  ),
                ),

                const SizedBox(height: 5,),
                // Container(
                //   width: double.infinity,
                //   padding: const EdgeInsets.all(12),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(16),
                //   ),
                //   child: Row(
                //     children: [
                //       Container(
                //         width: 110,
                //         height: 110,
                //         clipBehavior: Clip.antiAlias,
                //         decoration: BoxDecoration(
                //           color: const Color.fromRGBO(255, 240, 190, 1),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         child: Image.asset('assets/images/body spray.jpg',
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //       const SizedBox(width: 12),
                //
                //       Expanded(
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             const Text("Body Spary",
                //               style: TextStyle(
                //                 fontSize: 14,
                //                 fontWeight: FontWeight.w600,
                //               ),
                //             ),
                //
                //             const SizedBox(height: 6),
                //             const Text("Price: 900.00 tk",
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 color: Color.fromRGBO(255, 166, 0, 1),),
                //             ),
                //             const SizedBox(height: 6),
                //
                //             const Text("Company: Herlan",
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 color: Colors.grey,
                //               ),
                //             ),
                //             const SizedBox(height: 6),
                //             const Text("Time: 6-8 h",
                //               style: TextStyle(
                //                 fontSize: 12,
                //                 color: Colors.grey,
                //               ),
                //             ),
                //             const SizedBox(height: 10),
                //
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Row(
                //                   children: [
                //                     IconButton(
                //                       onPressed: () {},
                //                       icon: const Icon(Icons.remove),
                //                     ),
                //
                //                     const Text(
                //                       '1',
                //                       style: TextStyle(
                //                         fontSize: 12,
                //                         fontWeight: FontWeight.w600,
                //                       ),
                //                     ),
                //
                //                     IconButton(
                //                       onPressed: () {},
                //                       icon: const Icon(Icons.add),
                //                     ),
                //                   ],
                //                 ),
                //                 IconButton(
                //                   onPressed: () {},
                //                   icon: const Icon(Icons.delete_outline),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //
                //       ),
                //
                //     ],
                //   ),
                // ),



                const SizedBox(height: 5,),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 240, 190, 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/T-shirt.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 12),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("T-shirt",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 6),
                            const Text("Price: 409.00 tk",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(255, 166, 0, 1),),
                            ),
                            const SizedBox(height: 6),

                            const Text("Color: Black",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 6),
                            const Text("Size: XL",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove),
                                    ),

                                    const Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete_outline),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),

                    ],
                  ),
                ),
                const SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 45,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Enter promo code",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Apply",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const Text("Order Summary",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Subtotal",
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text("10000.00 tk",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),

                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Delivery Fee",
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      "120.00 tk",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),

                const Divider(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Total Amount",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text("10120.00 tk",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckoutUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(255, 70, 60, 1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),







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

          // onTap: (index) {
          //   if (index == 1) {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const CartUI(),
          //       ),
          //     );
          //   }
          // },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}