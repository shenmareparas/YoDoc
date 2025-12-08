import 'package:flutter/material.dart';

import 'package:yodoc/widgets/medicine_item.dart';
import 'package:yodoc/widgets/medicine_page_scaffold.dart';

class FeverNo extends StatefulWidget {
  const FeverNo({super.key});

  @override
  State<FeverNo> createState() => _FeverNoState();
}

class _FeverNoState extends State<FeverNo> {
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
          name: 'Dolokind',
          imagePath: "assets/images/IMG_3832.png",
        ),
      ],
    );
  }
}
