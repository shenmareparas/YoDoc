// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final maxLength;
  final keyboardType;
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
        style:
            const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          hintText: hintxt,
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(3),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.white54,
          counterText: "",
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
