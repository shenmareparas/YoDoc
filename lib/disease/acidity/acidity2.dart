import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class Acidity2 extends StatefulWidget {
  const Acidity2({super.key});

  @override
  State<Acidity2> createState() => _Acidity2State();
}

class _Acidity2State extends State<Acidity2> {
  @override
  Widget build(BuildContext context) {
    return MedicinePageScaffold(
      children: [
        const SizedBox(height: 20),
        const Text(
          "Medicines:",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
        const SizedBox(height: 40),
        MedicineItem(
          name: 'Eno',
          description: '1 Pack, instant relief',
          imagePath: "assets/images/IMG_3857.png",
          imageHeight: 250,
        ),
      ],
    );
  }
}
