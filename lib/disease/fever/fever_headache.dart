import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class FeverHead extends StatefulWidget {
  const FeverHead({super.key});

  @override
  State<FeverHead> createState() => _FeverHeadState();
}

class _FeverHeadState extends State<FeverHead> {
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
          name: 'Fenceta Novo',
          imagePath: "assets/images/IMG_3829.png",
        ),
        const SizedBox(height: 30),
        MedicineItem(
          name: 'Zerodol P',
          imagePath: "assets/images/IMG_3830.png",
        ),
        const SizedBox(height: 30),
        MedicineItem(
          name: 'Dolokind Plus',
          imagePath: "assets/images/IMG_3831.png",
        ),
      ],
    );
  }
}
