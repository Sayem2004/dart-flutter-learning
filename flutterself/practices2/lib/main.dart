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
        appBar: AppBar(
          title: const Text("Hello"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 35),

              decoration: BoxDecoration(
               // color: Color.fromRGBO(0, 200, 80, 1),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
               boxShadow: [BoxShadow(),],
                gradient: LinearGradient(colors: [Colors.yellow,
                Colors.red],
                )
              ),



              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
