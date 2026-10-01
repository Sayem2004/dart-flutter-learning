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
      home: const LikeScreen(),
    );
  }
}

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {

  // Boolean State
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Like Button'),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton.icon(
          onPressed: toggleLike,

          // Change icon based on state
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
          ),

          // Change text based on state
          label: Text(
            isLiked ? 'Liked' : 'Like',
          ),
        ),
      ),
    );
  }
}