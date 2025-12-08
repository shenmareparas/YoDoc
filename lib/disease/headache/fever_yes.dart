import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class FeverYes extends StatefulWidget {
  const FeverYes({super.key});

  @override
  State<FeverYes> createState() => _FeverYesState();
}

class _FeverYesState extends State<FeverYes> {
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
                  name: 'Fenceta Novo',
                  imagePath: "assets/images/IMG_3829.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Zerodol P',
                  imagePath: "assets/images/IMG_3830.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
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
}
