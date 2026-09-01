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
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
            Text("Hello"),
            WelcomeText(),
            const SizedBox(height: 10),
              UserName(name: "Rohim"),
              CounterScreen(),
            ]
          ),
        ),
      ),
    );
  }
}
class WelcomeText extends StatelessWidget{
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context){
    return const Text("Welcome");
  }
}

class UserName extends StatelessWidget{
  final String name;
  const UserName({
    super.key,
    required this.name,
});
  @override
  Widget build(BuildContext context){
    return Text(name);
  }
}

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState(){
    return _CounterScreenState();
  }
}

class _CounterScreenState extends State<CounterScreen>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$counter"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: const Text("Increase"),
        ),
      ],
    );
  }
}
