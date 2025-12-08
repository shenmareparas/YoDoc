import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class Cold1 extends StatefulWidget {
  const Cold1({super.key});

  @override
  State<Cold1> createState() => _Cold1State();
}

class _Cold1State extends State<Cold1> {
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
                const Text(
                  "Medicines :",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'ZADY 500',
                  description: '1 Tab daily till the cold subsides',
                  imagePath: "assets/images/IMG_3848.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Fenceta Novo',
                  description: '1 Tab when you feel feverish',
                  imagePath: "assets/images/IMG_3829.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Montemac-L',
                  description: '2 times daily till the cold subsides',
                  imagePath: "assets/images/IMG_3852.png",
                  imageHeight: 300,
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Benedryl',
                  description: '10ml 2 times daily',
                  imagePath: "assets/images/IMG_3850.png",
                  imageHeight: 300,
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Strepsils',
                  description: 'Optional',
                  imagePath: "assets/images/IMG_3851.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
