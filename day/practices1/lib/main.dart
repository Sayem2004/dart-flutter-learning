 import "package:flutter/material.dart";
import 'app/view/profile_ui.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slide 01",
      home: ProfileUi(),
    );
  }
}





// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromRGBO(217, 232, 207, 1.0),
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(222, 178, 234, 1.0),
//             title: const Text("My First Flutter App")
//         ),
//         body: SafeArea(
//           child: Container(
//             margin:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [const Text("Hello Flutter!"),
//                   const Text("Good"),
//                   const Icon(Icons.person_outline),
//                   ElevatedButton(onPressed: (){
//                     print("Button clicked");
//                   }, child: const Text("Click")
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: (){},
//         child: const Text("Button"),
//         ),
//
//
//
//
//       ),
//     );
//   }
// }
//
//
