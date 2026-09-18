import 'package:flutter/material.dart';

class PracticesUi extends StatefulWidget {
  const PracticesUi({super.key});

  @override
  State<PracticesUi> createState() => _PracticesUiState();
}

class _PracticesUiState extends State<PracticesUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 240, 245, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(88, 40, 246, 1),
        title: Center(
          child: const Text("Hello", style:
          TextStyle(
            color: Color.fromRGBO(240, 240, 245, 1),
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
          ),
        ),
      ),
    );
  }
}

