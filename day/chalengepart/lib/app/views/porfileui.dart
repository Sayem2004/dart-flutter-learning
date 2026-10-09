import "package:flutter/material.dart";

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile Screen",
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(217, 232, 207, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(246, 232, 247, 1),
          centerTitle: true,
          title: const Text("Profile"),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Profile Icon
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person_outline, size: 60),
                  ),

                  const SizedBox(height: 20),

                  // Name
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 30),

                  const Divider(thickness: 1),

                  const SizedBox(height: 20),

                  // Challenge 1: Reusable contact widgets
                  const ContactInfo(
                    icon: Icons.email_outlined,
                    label: "Email",
                    value: "user@example.com",
                  ),

                  const SizedBox(height: 25),

                  const ContactInfo(
                    icon: Icons.phone_outlined,
                    label: "Phone",
                    value: "01XXXXXXXXX",
                  ),

                  const SizedBox(height: 25),

                  // Challenge 2: Location
                  const ContactInfo(
                    icon: Icons.location_on_outlined,
                    label: "Location",
                    value: "Dhaka, Bangladesh",
                  ),

                  const SizedBox(height: 30),

                  const Divider(thickness: 1),

                  const SizedBox(height: 30),

                  // Edit Profile Button
                  ElevatedButton(
                    onPressed: () {
                      print("Edit Profile clicked");
                    },
                    child: const Text("Edit Profile"),
                  ),

                  const SizedBox(height: 15),

                  // Challenge 3: Logout Button
                  ElevatedButton(
                    onPressed: () {
                      print("Logout clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Logout"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Reusable Widget: Icon + Label + Value
class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ContactInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 28),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(value, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
