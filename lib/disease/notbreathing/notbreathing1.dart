import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';

class Notbreathing1 extends StatefulWidget {
  const Notbreathing1({super.key});

  @override
  State<Notbreathing1> createState() => _Notbreathing1State();
}

class _Notbreathing1State extends State<Notbreathing1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppConstants.primaryGradient,
        ),
        child: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 80,
                ),
                SizedBox(height: 30),
                Text(
                  'Give CPR Compressions',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
