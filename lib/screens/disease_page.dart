import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/disease_button.dart';

import '../utils/app_constants.dart';

class DiseasePage extends StatefulWidget {
  const DiseasePage({super.key});

  @override
  State<DiseasePage> createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppConstants.primaryGradient,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What are you',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.8),
                        fontSize: 24,
                      ),
                    ),
                    const Text(
                      'Feeling today?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(16),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    DiseaseButton(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.headacheRoute),
                      title: "Headache",
                    ),
                    DiseaseButton(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.vommitRoute),
                      title: "Vommit",
                    ),
                    DiseaseButton(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.coldRoute),
                      title: "Cold",
                    ),
                    DiseaseButton(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.feverRoute),
                      title: "Fever",
                    ),
                    DiseaseButton(
                      onTap: () => Navigator.pushNamed(
                          context, AppRoutes.loosemotionRoute),
                      title: "Loose Motion",
                    ),
                    DiseaseButton(
                      onTap: () => Navigator.pushNamed(
                          context, AppRoutes.stomachacheRoute),
                      title: "Stomach Ache",
                    ),
                    DiseaseButton(
                      onTap: () =>
                          Navigator.pushNamed(context, AppRoutes.acidityRoute),
                      title: "Acidity",
                    ),
                    DiseaseButton(
                      onTap: () => Navigator.pushNamed(
                          context, AppRoutes.notbreathingRoute),
                      title: "Not Breathing",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
