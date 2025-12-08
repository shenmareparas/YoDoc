import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class Loosemotion2 extends StatefulWidget {
  const Loosemotion2({super.key});

  @override
  State<Loosemotion2> createState() => _Loosemotion2State();
}

class _Loosemotion2State extends State<Loosemotion2> {
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
          name: 'Metron',
          description: '1 Tab thrics daily',
          imagePath: "assets/images/IMG_3853.png",
        ),
      ],
    );
  }
}
