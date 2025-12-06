import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final int? maxLength;
  final TextInputType? keyboardType;
  final String hintxt;
  const InputField(
      {super.key,
      required this.maxLength,
      required this.keyboardType,
      required this.hintxt});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        maxLength: maxLength,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          hintText: hintxt,
          hintStyle: TextStyle(
            color: Colors.white.withValues(alpha: 0.7),
            fontWeight: FontWeight.normal,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white.withValues(alpha: 0.2),
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white30, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 2),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "$hintxt cannot be empty";
          }
          return null;
        },
      ),
    );
  }
}
