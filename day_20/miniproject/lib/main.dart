import 'package:flutter/material.dart';
import 'app/views/registration_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Registration',
      home: const RegistrationUi(),
    );
  }
}