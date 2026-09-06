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
        appBar: AppBar(title: const Text("Hello Fahad")),
        body: Column(
          children: [
            Text(
              "Hello Farhan Gunda",
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(child: Text("Hello Hi")),
            SizedBox(height: 15),

            Container(
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  print("Button Clicked");
                },

                child: Text("Next"),
              ),
            ),
            SizedBox(height: 50),
            UserName(name: "Sayem"),

            const CounterScreen(),
          ],
        ),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  final String name;

  const UserName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("User Name: $name");
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() {
    return _CounterScreenState();}

}

class _CounterScreenState extends State<CounterScreen> {
  int counter =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Counter: $counter"),
        ElevatedButton(onPressed: (){
          setState(() {
            counter++;
          });
        },
          child: const Text("Increase"),
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            counter--;
          });

        },
        child: const Text("Decrease"),),

      ],
    );
  }
}

