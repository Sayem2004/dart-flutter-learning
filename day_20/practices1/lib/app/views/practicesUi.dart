import'package:flutter/material.dart';

class PracticesUi extends StatefulWidget {
  const PracticesUi({super.key});

  @override
  State<PracticesUi> createState() => _PracticesUiState();
}

class _PracticesUiState extends State<PracticesUi> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 240, 245, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(88, 40, 246, 1),
        centerTitle: true,
        title: const Text(
          "Hello",
          style: TextStyle(
            color: Color.fromRGBO(240, 240, 245, 1),
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  "Enter your information to continue",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 25),

                TextFormField(
                  maxLength: 20,
                 // autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Name:  ",
                    hintText: "Enter your full name",
                    prefixIcon: const Icon(Icons.person_outline),
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (name){
                    if(name == null || name.trim().isEmpty){
                      return "Enter name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                    autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Email:  ",
                    hintText: "example@gmail.com",
                      helperText: 'Use your active email address',
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      // ২. ইমেইলের ফরম্যাট সঠিক কিনা চেক করার জন্য Regex
                      String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                      RegExp regExp = RegExp(emailPattern);

                      if (!regExp.hasMatch(value.trim())) {
                        return 'Please enter a valid email address';
                      }
                      return null; // সব ঠিক থাকলে null রিটার্ন করবে
                    }
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number: ",
                    hintText: "01************",
                    prefixIcon: Icon(Icons.phone),
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                    validator: (value) {
                      // ১. ইনপুট খালি কিনা চেক করবে
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your phone number';
                      }

                      // ২. ১১ ডিজিট এবং 01 দিয়ে শুরু হওয়ার Regex Pattern (বাংলাদেশি নম্বরের জন্য)
                      String phonePattern = r'^(?:\+88)?01[3-9]\d{8}$';
                      RegExp regExp = RegExp(phonePattern);

                      if (!regExp.hasMatch(value.trim())) {
                        return 'Enter a valid 11-digit phone number';
                      }

                      return null; // সব ঠিক থাকলে null
                    }
                ),
                const SizedBox(height: 10,),

                TextFormField(
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password:  ",
                    hintText: " FEG@#Tgd*8",
                    helperText: 'Minimum 6 characters',
                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.visibility),
                    filled: true,
                    fillColor: Colors.black12,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      if (!RegExp(r'[0-9]').hasMatch(value)) {
                        return 'Password must contain at least 1 number';
                      }
                      return null;
                    }
                ),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      final isValid = formKey.currentState!.validate();

                      if (isValid) {
                        print("Success");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(88, 40, 246, 1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )




              ],
            ),



            )
          ),
        ),
    );

  }
}
