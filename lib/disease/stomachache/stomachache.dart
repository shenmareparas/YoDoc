import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/utils/app_constants.dart';

class StomachachePage extends StatefulWidget {
  const StomachachePage({super.key});

  @override
  State<StomachachePage> createState() => _StomachachePageState();
}

class _StomachachePageState extends State<StomachachePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: AppConstants.primaryGradient,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Which part of the stomach is affected?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            _buildOptionButton(
              context,
              title: 'Upper',
              onTap: () => Navigator.pushNamed(context, AppRoutes.upperstRoute),
            ),
            const SizedBox(height: 20),
            _buildOptionButton(
              context,
              title: 'Lower',
              onTap: () => Navigator.pushNamed(context, AppRoutes.lowerstRoute),
            ),
            const SizedBox(height: 20),
            _buildOptionButton(
              context,
              title: 'Whole',
              onTap: () => Navigator.pushNamed(context, AppRoutes.wholestRoute),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildOptionButton(BuildContext context,
      {required String title,
      required VoidCallback onTap}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromRGBO(6, 190, 182, 1),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        minimumSize: const Size(250, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 4,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
