import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yodoc/utils/app_constants.dart';

class Notbreathing2 extends StatefulWidget {
  const Notbreathing2({super.key});

  @override
  State<Notbreathing2> createState() => _Notbreathing2State();
}

class _Notbreathing2State extends State<Notbreathing2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppConstants.primaryGradient,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assets/images/35997-ghostly-tombstone.json",
                  height: 300,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Lets hold a moment of silence',
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
