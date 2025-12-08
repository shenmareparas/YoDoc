import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class Acidity1 extends StatefulWidget {
  const Acidity1({super.key});

  @override
  State<Acidity1> createState() => _Acidity1State();
}

class _Acidity1State extends State<Acidity1> {
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Medicines:",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                  ),
                ),
                const SizedBox(height: 40),
                MedicineItem(
                  name: 'Pantoprazole',
                  description: '1 Tab daily on empty stomach in the morning',
                  imagePath: "assets/images/IMG_3856.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
