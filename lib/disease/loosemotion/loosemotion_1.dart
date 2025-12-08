import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class Loosemotion1 extends StatefulWidget {
  const Loosemotion1({super.key});

  @override
  State<Loosemotion1> createState() => _Loosemotion1State();
}

class _Loosemotion1State extends State<Loosemotion1> {
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
                  name: 'Metron',
                  description: '1 Tab thrics daily',
                  imagePath: "assets/images/IMG_3853.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Oflomac 200',
                  description: '1 Tab 2 times daily',
                  imagePath: "assets/images/IMG_3854.png",
                ),
                const SizedBox(height: 30),
                MedicineItem(
                  name: 'Meftal Spas',
                  description: '1 Tab 2 times daily',
                  imagePath: "assets/images/IMG_3855.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
