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
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // This is our State
  int counter = 0;

  // Increase counter
  void increaseCounter() {
    setState(() {
      counter++;
    });
  }

  // Decrease counter
  void decreaseCounter() {
    setState(() {
      counter--;
    });
  }

  // Reset counter
  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Counter value
            Text(
              'Counter: $counter',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // - and + buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Decrease Button
                ElevatedButton(
                  onPressed: decreaseCounter,
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 25),
                  ),
                ),

                const SizedBox(width: 20),

                // Increase Button
                ElevatedButton(
                  onPressed: increaseCounter,
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Reset Button
            ElevatedButton(
              onPressed: resetCounter,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}