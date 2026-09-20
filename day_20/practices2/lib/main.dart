import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:practices2/app/views/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegistrationUi(),
    );
  }
}
