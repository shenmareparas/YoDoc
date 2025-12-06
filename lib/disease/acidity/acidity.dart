import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/utils/app_constants.dart';

class AcidityPage extends StatefulWidget {
  const AcidityPage({super.key});

  @override
  State<AcidityPage> createState() => _AcidityPageState();
}

class _AcidityPageState extends State<AcidityPage> {
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
                    'Specify your problem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              GroupButton(
                isRadio: true,
                controller: controller,
                buttons: const ['Happens Often', 'One time thing', 'Sometimes'],
                onSelected: (val, i, selected) {},
                options: GroupButtonOptions(
                  buttonHeight: 60,
                  buttonWidth: 250,
                  spacing: 20,
                  runSpacing: 20,
                  borderRadius: BorderRadius.circular(30),
                  textAlign: TextAlign.center,
                  selectedColor: Colors.white,
                  unselectedColor: Colors.white.withValues(alpha: 0.1),
                  elevation: 0,
                  selectedTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(6, 190, 182, 1),
                    fontSize: 18,
                  ),
                  unselectedTextStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  mainGroupAlignment: MainGroupAlignment.center,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                  onPressed: () {
                    if (controller.selectedIndex == 0) {
                      Navigator.pushNamed(context, AppRoutes.acidity1Route);
                    } else if (controller.selectedIndex == 1 ||
                        controller.selectedIndex == 2) {
                      Navigator.pushNamed(context, AppRoutes.acidity2Route);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromRGBO(6, 190, 182, 1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 16),
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
      ),
    );
  }
}
