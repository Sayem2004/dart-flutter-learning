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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Center(
                child: CounterScreen(),
              ),
            ),

            AboutInfo(
              icon: Icons.holiday_village,
              name: "Zabber",
              Address: "Barguna",
            ),
          ],
        ),
      ),
    );
  }
}

class AboutInfo extends StatelessWidget{
  final IconData icon;
  final String name;
  final String Address;

  const AboutInfo({super.key,
  required this.icon, required this.name, required this.Address,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:15),

      child: Column(
        children: [
          Icon(icon),
          Text("Name: $name"),
          Text("Address: $Address"),
        ],
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