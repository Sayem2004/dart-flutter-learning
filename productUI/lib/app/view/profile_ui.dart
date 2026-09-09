import "package:flutter/material.dart";

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 241, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(225, 240, 255, 1),
        elevation: 0,
        title: const Text("Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 42,
                backgroundImage: AssetImage("assets/images/IMG_6644.JPG",
                ),
              ),
              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    const Icon(
                      Icons.person_outline,
                      size: 22,
                    ),

                    const SizedBox(width: 16),

                    const Text("My Account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    const Icon(
                      Icons.receipt_long_outlined,
                      size: 22,
                    ),

                    const SizedBox(width: 16),

                    const Text("Orders",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    const Icon(
                      Icons.location_on_outlined,
                      size: 22,
                    ),

                    const SizedBox(width: 16),

                    const Text("Shipping Address",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    const Icon(
                      Icons.notifications_none_outlined,
                      size: 22,
                    ),
                    const SizedBox(width: 16),
                    const Text("Notifications",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),

                    const Icon(
                      Icons.mail_outline,
                      size: 22,
                    ),
                    const SizedBox(width: 16),
                    const Text("Contact us",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.description_outlined,
                      size: 22,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 70, 60, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Log out",
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