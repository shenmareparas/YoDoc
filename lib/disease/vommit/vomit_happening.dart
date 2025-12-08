import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class VommitHappening extends StatefulWidget {
  const VommitHappening({super.key});

  @override
  State<VommitHappening> createState() => _VommitHappeningState();
}

class _VommitHappeningState extends State<VommitHappening> {
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
                  name: 'Vomikind MD',
                  imagePath: "assets/images/IMG_3845.png",
                  imageHeight: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
