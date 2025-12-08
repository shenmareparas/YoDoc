import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class LowerStomach extends StatefulWidget {
  const LowerStomach({super.key});

  @override
  State<LowerStomach> createState() => _LowerStomachState();
}

class _LowerStomachState extends State<LowerStomach> {
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
          name: 'Anafortan',
          description: '1 Tab',
          imagePath: "assets/images/IMG_3860.png",
          imageHeight: 300,
        ),
      ],
    );
  }
}
