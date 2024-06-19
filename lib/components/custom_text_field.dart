import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixicon,
    this.suffixIcon,
    this.obscureText = false,
    this.textEditingController,
  });

  final String hintText;
  final Widget? prefixicon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixicon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        hintText: hintText,
      ),
    );
  }
}
