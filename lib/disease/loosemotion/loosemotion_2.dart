import 'package:flutter/material.dart';
import 'package:yodoc/utils/app_constants.dart';
import 'package:yodoc/widgets/medicine_item.dart';

class Loosemotion2 extends StatefulWidget {
  const Loosemotion2({super.key});

  @override
  State<Loosemotion2> createState() => _Loosemotion2State();
}

class _Loosemotion2State extends State<Loosemotion2> {
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
                  name: 'Metron',
                  description: '1 Tab thrics daily',
                  imagePath: "assets/images/IMG_3853.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
