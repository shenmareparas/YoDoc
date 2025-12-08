import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class VommitHappening extends StatefulWidget {
  const VommitHappening({super.key});

  @override
  State<VommitHappening> createState() => _VommitHappeningState();
}

class _VommitHappeningState extends State<VommitHappening> {
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
          name: 'Vomikind MD',
          imagePath: "assets/images/IMG_3845.png",
          imageHeight: 300,
        ),
      ],
    );
  }
}
