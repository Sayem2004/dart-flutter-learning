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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: const Text("My App"),
            centerTitle: true,
          ),
        
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: 10,),
            child: Text("Hello Flutter Devloper",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ),
        
        ),
      ),

    );
  }
}

