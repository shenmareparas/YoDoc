import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class VommitFeeling extends StatefulWidget {
  const VommitFeeling({super.key});

  @override
  State<VommitFeeling> createState() => _VommitFeelingState();
}

class _VommitFeelingState extends State<VommitFeeling> {
  @override
  Widget build(BuildContext context) {
    return MedicinePageScaffold(
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
          name: 'Stemetil MD',
          imagePath: "assets/images/IMG_3846.png",
        ),
      ],
    );
  }
}
