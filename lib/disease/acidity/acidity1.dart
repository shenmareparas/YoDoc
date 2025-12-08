import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class Acidity1 extends StatefulWidget {
  const Acidity1({super.key});

  @override
  State<Acidity1> createState() => _Acidity1State();
}

class _Acidity1State extends State<Acidity1> {
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
          name: 'Pantoprazole',
          description: '1 Tab daily on empty stomach in the morning',
          imagePath: "assets/images/IMG_3856.png",
        ),
      ],
    );
  }
}
