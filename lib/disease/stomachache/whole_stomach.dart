import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class WholeStomach extends StatefulWidget {
  const WholeStomach({super.key});

  @override
  State<WholeStomach> createState() => _WholeStomachState();
}

class _WholeStomachState extends State<WholeStomach> {
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
          name: 'Drotin A',
          description: '1 Tab',
          imagePath: "assets/images/IMG_3861.png",
          imageHeight: 300,
        ),
      ],
    );
  }
}
