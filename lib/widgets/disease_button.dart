// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DiseaseButton extends StatelessWidget {
  final onTap;
  final String title;
  const DiseaseButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[300]?.withOpacity(0.7),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 150,
          height: 150,
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
