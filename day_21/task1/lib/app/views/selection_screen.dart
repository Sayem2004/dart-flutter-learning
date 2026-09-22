import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  final List<String> categories = const [
    "Electronics",
    "Clothing",
    "Books",
    "Sports",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Select Category"),
      ),

      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(category),

              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, category);
                },
                child: const Text("Select"),
              ),
            ),
          );
        },
      ),
    );
  }
}