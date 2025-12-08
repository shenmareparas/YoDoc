import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class ColdPage extends StatefulWidget {
  const ColdPage({super.key});

  @override
  State<ColdPage> createState() => _ColdPageState();
}

class _ColdPageState extends State<ColdPage> {
  final controller = GroupButtonController();

  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Also happening?',
      children: [
        GroupButton(
          isRadio: false,
          controller: controller,
          buttons: const [
            'Fever',
            'Cough',
            'Nose Blowing',
            'Throat Irritation',
            'Dry Cough'
          ],
          onSelected: (val, i, selected) {},
          options: GroupButtonOptions(
            buttonHeight: 60,
            buttonWidth: 150,
            spacing: 15,
            runSpacing: 15,
            borderRadius: BorderRadius.circular(30),
            textAlign: TextAlign.center,
            selectedColor: Colors.white,
            unselectedColor: Colors.white.withValues(alpha: 0.1),
            elevation: 0,
            selectedShadow: const [],
            unselectedShadow: const [],
            selectedTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(6, 190, 182, 1),
              fontSize: 14,
            ),
            unselectedTextStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 14,
            ),
            mainGroupAlignment: MainGroupAlignment.center,
          ),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: ElevatedButton(
            onPressed: () {
              if (controller.selectedIndexes.containsAll([0, 1, 2, 3, 4])) {
                Navigator.pushNamed(context, AppRoutes.cold1Route);
              } else if (controller.selectedIndexes.containsAll([0, 2])) {
                Navigator.pushNamed(context, AppRoutes.cold2Route);
              } else if (controller.selectedIndexes.containsAll([1, 2, 3, 4])) {
                Navigator.pushNamed(context, AppRoutes.cold3Route);
              } else if (controller.selectedIndexes.containsAll([2])) {
                Navigator.pushNamed(context, AppRoutes.cold4Route);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromRGBO(6, 190, 182, 1),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 4,
            ),
            child: const Text(
              'N E X T',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
