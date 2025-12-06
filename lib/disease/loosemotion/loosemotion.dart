import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/utils/app_constants.dart';

class LoosemotionPage extends StatefulWidget {
  const LoosemotionPage({super.key});

  @override
  State<LoosemotionPage> createState() => _LoosemotionPageState();
}

class _LoosemotionPageState extends State<LoosemotionPage> {
  final controller = GroupButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: AppConstants.primaryGradient,
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 80),
            const Center(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Also happening?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            const SizedBox(height: 40),
            GroupButton(
              isRadio: false,
              controller: controller,
              buttons: const ['Mucoid Stool', 'Blood Stained', 'Stomach Ache'],
              onSelected: (val, i, selected) {},
              options: GroupButtonOptions(
                buttonHeight: 60,
                buttonWidth: 140,
                spacing: 15,
                runSpacing: 15,
                borderRadius: BorderRadius.circular(20),
                textAlign: TextAlign.center,
                selectedColor: Colors.white,
                unselectedColor: Colors.white.withValues(alpha: 0.1),
                elevation: 0,
                selectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(6, 190, 182, 1),
                  fontSize: 16,
                ),
                unselectedTextStyle: const TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 16,
                ),
                mainGroupAlignment: MainGroupAlignment.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: ElevatedButton(
                onPressed: () {
                  if (controller.selectedIndexes.containsAll([0, 1, 2])) {
                    Navigator.pushNamed(context, AppRoutes.loose1Route);
                  } else if (controller.selectedIndexes.contains(0)) {
                    Navigator.pushNamed(context, AppRoutes.loose2Route);
                  } else {
                    Navigator.pushNamed(context, AppRoutes.loose2Route);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color.fromRGBO(6, 190, 182, 1),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
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
        ),
      ),
    ));
  }
}
