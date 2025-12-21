import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  bool? obscureText;
  Function(String)? onChanged;
  CustomTextField.CustomTextFormField({
    this.hintText,
    this.onChanged,
    this.obscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
