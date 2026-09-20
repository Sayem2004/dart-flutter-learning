import 'package:flutter/material.dart';

class RegistrationUi extends StatefulWidget {
  const RegistrationUi({super.key});

  @override
  State<RegistrationUi> createState() => _RegistrationUiState();
}

class _RegistrationUiState extends State<RegistrationUi> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(182, 192, 216, 1.0),
      appBar: AppBar(
        title: const Text(
          "Registration Form",
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 15),

                //name
                TextFormField(
                  maxLength: 50,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Full Name:  ",
                    hintText: "Enter Your Full Name",
                    prefixIcon: Icon(Icons.person_outline),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(11, 9, 0, 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (name) {
                    if (name == null || name.trim().isEmpty) {
                      return "Enter name";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),
                TextFormField(
                  maxLength: 50,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email:  ",
                    hintText: "example@gmail.com",
                    helperText: 'Use your active email address',
                    prefixIcon: Icon(Icons.email_outlined),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(11, 9, 0, 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your email';
                    }
                    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                    RegExp regExp = RegExp(emailPattern);

                    if (!regExp.hasMatch(value.trim())) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  maxLength: 50,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number:  ",
                    hintText: "Enter Your Valid Number",
                    helperText: 'Use your active phone number',
                    prefixIcon: Icon(Icons.phone),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(11, 9, 0, 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your phone number';
                    }

                    String phonePattern = r'^(?:\+88)?01[3-9]\d{8}$';
                    RegExp regExp = RegExp(phonePattern);

                    if (!regExp.hasMatch(value.trim())) {
                      return 'Enter a valid 11-digit phone number';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 15),

                // Password Field
                TextFormField(
                  controller: _passwordController, // 👈 কন্ট্রোলার যুক্ত করা হলো
                  maxLength: 50,
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Password:  ",
                    hintText: "@#asrR",
                    prefixIcon: Icon(Icons.password_outlined),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(11, 9, 0, 1.0),
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
                  },
                ),
                const SizedBox(height: 15),

                // Confirm Password Field
                TextFormField(
                  controller: _confirmPasswordController, // 👈 কন্ট্রোলার যুক্ত করা হলো
                  maxLength: 50,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Confirm Password:  ",
                    hintText: "@#asrR",
                    prefixIcon: Icon(Icons.password_outlined),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(11, 9, 0, 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}