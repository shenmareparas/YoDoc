import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';

class Cold3 extends StatefulWidget {
  const Cold3({super.key});

  @override
  State<Cold3> createState() => _Cold3State();
}

class _Cold3State extends State<Cold3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                _buildMedicineItem(
                  name: 'ZADY 500',
                  description: '1 Tab daily till the cold subsides',
                  imagePath: "assets/images/IMG_3848.png",
                ),
                const SizedBox(height: 30),
                _buildMedicineItem(
                  name: 'Montemac-L',
                  description: '2 times daily till the cold subsides',
                  imagePath: "assets/images/IMG_3852.png",
                  imageHeight: 300,
                ),
                const SizedBox(height: 30),
                _buildMedicineItem(
                  name: 'Benedryl',
                  description: '10ml 2 times daily',
                  imagePath: "assets/images/IMG_3850.png",
                  imageHeight: 300,
                ),
                const SizedBox(height: 30),
                _buildMedicineItem(
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

  Widget _buildMedicineItem({
    required String name,
    required String description,
    required String imagePath,
    double imageHeight = 200,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withValues(alpha: 0.9),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
