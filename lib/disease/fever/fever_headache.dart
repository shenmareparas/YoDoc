import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';

class FeverHead extends StatefulWidget {
  const FeverHead({super.key});

  @override
  State<FeverHead> createState() => _FeverHeadState();
}

class _FeverHeadState extends State<FeverHead> {
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
                  name: 'Fenceta Novo',
                  imagePath: "assets/images/IMG_3829.png",
                ),
                const SizedBox(height: 30),
                _buildMedicineItem(
                  name: 'Zerodol P',
                  imagePath: "assets/images/IMG_3830.png",
                ),
                const SizedBox(height: 30),
                _buildMedicineItem(
                  name: 'Dolokind Plus',
                  imagePath: "assets/images/IMG_3831.png",
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
