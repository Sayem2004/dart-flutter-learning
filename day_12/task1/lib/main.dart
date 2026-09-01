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
          padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: ProfileCard(name: "Karim",
              profession: "Student",
              email: "msa@gmail.com",
              phone: "01714444"
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget{
  final String name;
  final String profession;
  final String email;
  final String phone;

  const ProfileCard({super.key,
  required this.name,
    required this.profession,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context){
    return Column(
      //mainAxisSize: MainAxisSize.min,
     // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Icon(Icons.person, size: 40,),
        Text(name),
        Text(profession),
        Text(email),
        Text(phone),
      ],
    );
  }
}

