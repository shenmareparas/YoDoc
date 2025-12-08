import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class FeverNo extends StatefulWidget {
  const FeverNo({super.key});

  @override
  State<FeverNo> createState() => _FeverNoState();
}

class _FeverNoState extends State<FeverNo> {
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
                const SizedBox(height: 50),
                MedicineItem(
                  name: 'Dolokind',
                  imagePath: "assets/images/IMG_3832.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
