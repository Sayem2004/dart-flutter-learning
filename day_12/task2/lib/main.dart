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
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Center(
              child: CounterScreen()),
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState(){
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text("$counter"),
        ElevatedButton(onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: const Text("+"),
        ),
        ElevatedButton(onPressed: (){
          setState(() {
            counter--;
          });
        },
          child: const Text("-"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
          child: const Text("Reset"),
        ),
      ],
    );
  }
}