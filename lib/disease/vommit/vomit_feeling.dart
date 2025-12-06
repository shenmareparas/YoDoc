import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';

class VommitFeeling extends StatefulWidget {
  const VommitFeeling({super.key});

  @override
  State<VommitFeeling> createState() => _VommitFeelingState();
}

class _VommitFeelingState extends State<VommitFeeling> {
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
                const SizedBox(height: 50),
                _buildMedicineItem(
                  name: 'Stemetil MD',
                  imagePath: "assets/images/IMG_3846.png",
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
