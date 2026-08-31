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
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Column(
          children: [
          Icon(Icons.person),
          Text("Sayem"),
          Text("Flutter developer"),
          Row(children: [
            Icon(Icons.email),
            Text("mdalimransayem@gmail.com"),
          ],),
          Row(children: [
            Icon(Icons.phone),
            Text("01746684"),
          ],),
          ElevatedButton(onPressed:(){
            print("Edit Profile clicked");
          },
           child: const Text("Edit Profile"),
           ),
          ],
        ),
      ),
    );
  }
}