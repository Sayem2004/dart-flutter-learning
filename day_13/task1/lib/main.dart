import 'package:flutter/material.dart';
import 'styles.dart';
import 'inputField.dart';

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
          title: const Text("Login"),
        ),
        body: SingleChildScrollView(
          child:  Column(
          children: [
           Icon(Icons.login,
               size:80
           ),
            Text("Welcome Back",
            style: TextStyles.headingStyle,
            ),
            SizedBox(height: 10,),
            Text("Login to Your Account",
            style: TextStyles.headingStyle
            ),

            Padding(padding:EdgeInsets.all(10),
                child: CustomInputField(
                  icon: Icon(Icons.email),
                  hintText: "Enter Your Email",
                  keyboardtype: TextInputType.emailAddress,
                  ),
                ),
            SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.all(10),
              child: CustomInputField(
                icon: const Icon(Icons.password),
                hintText: "Enter your Password",
                keyboardtype: TextInputType.text,
              )
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                ),
              ),
            ),

             Padding(
               padding:  EdgeInsets.symmetric(horizontal: 10.0),
               child: Container(
                 padding: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(color: Colors.red),
                   color: Color.fromRGBO(50, 150, 100, 1),
                 ),
                 child: Row(
                   children: [
                     Expanded(
                       child: ElevatedButton(
                         onPressed: () {},
                         child: const Text("Login"),
                       ),
                     ),
                   ],
                 ),
               ),
             ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: (){},
                    child: const Text("Sign Up")),
              ],
            )



          ],
        ),
      ),
      ),
    );
  }
}