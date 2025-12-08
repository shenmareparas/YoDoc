import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class Cold2 extends StatefulWidget {
  const Cold2({super.key});

  @override
  State<Cold2> createState() => _Cold2State();
}

class _Cold2State extends State<Cold2> {
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
        const SizedBox(height: 30),
        MedicineItem(
          name: 'ZADY 500',
          description: '1 Tab daily till the cold subsides',
          imagePath: "assets/images/IMG_3848.png",
        ),
        const SizedBox(height: 30),
        MedicineItem(
          name: 'Fenceta Novo',
          description: '1 Tab when you feel feverish',
          imagePath: "assets/images/IMG_3829.png",
        ),
        const SizedBox(height: 30),
        MedicineItem(
          name: 'Montemac-L',
          description: '2 times daily till the cold subsides',
          imagePath: "assets/images/IMG_3852.png",
          imageHeight: 300,
        ),
      ],
    );
  }
}
