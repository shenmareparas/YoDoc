import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class Loosemotion1 extends StatefulWidget {
  const Loosemotion1({super.key});

  @override
  State<Loosemotion1> createState() => _Loosemotion1State();
}

class _Loosemotion1State extends State<Loosemotion1> {
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
    );
  }
}
