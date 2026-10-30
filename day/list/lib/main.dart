
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
      home: Scaffold(
        // 60% - Background
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),

        // 30% - Primary color
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(155, 187, 180, 1),
          title: const Text(
            "Hello World",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(31, 41, 55, 1),
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to My App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(31, 41, 55, 1),
                ),
              ),

              const SizedBox(height: 16),

              // 30% - Brand-colored section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(155, 187, 180, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "This is my section",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 10% - Accent color
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                  const Color.fromRGBO(217, 119, 6, 1),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
