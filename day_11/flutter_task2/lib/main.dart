import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ContactInfo(
            icon: Icons.email,
            label: "Email: ",
            value: "mdalimransayem@gmail.com",
            ),

            ContactInfo(icon: Icons.phone, 
            label: "Phone: ", 
            value: "01746684"
            ),

            ContactInfo(icon: Icons.location_city, 
            label: "Location: ", 
            value: "Dhaka, Bangladesh"
            ),
            ElevatedButton(
              onPressed: () => print("Logout clicked"),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return Row(children: [Icon(icon), Text(label), Text(value)]);
  }
}
