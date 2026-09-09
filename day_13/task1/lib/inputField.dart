import 'package:flutter/material.dart';



class CustomInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextInputType keyboardtype;

  const CustomInputField({super.key,
  required this.icon, required this.hintText,
    required this.keyboardtype,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hintText,

      ),
    );
  }
}
