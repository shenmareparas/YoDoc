import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class UpperStomach extends StatefulWidget {
  const UpperStomach({super.key});

  @override
  State<UpperStomach> createState() => _UpperStomachState();
}

class _UpperStomachState extends State<UpperStomach> {
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
          name: 'Buscopan',
          description: '1 Tab',
          imagePath: "assets/images/IMG_3858.png",
        ),
      ],
    );
  }
}
