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
        appBar: AppBar(
          title: const Text("Hello Fahad"),
        ),
        body: Column(
          children: [
            Text("Hello Farhan Gunda",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                child:
                  Text("Hello Hi"),

            ),

          ],
        ),
      ),
    );
  }
}

