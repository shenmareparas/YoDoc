import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../utils/app_constants.dart';

class FeverPage extends StatefulWidget {
  const FeverPage({super.key});

  @override
  State<FeverPage> createState() => _FeverPageState();
}

class _FeverPageState extends State<FeverPage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Also Happening?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            _buildOptionButton(
              context,
              title: 'Headache',
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.feverheadRoute),
            ),
            const SizedBox(height: 20),
            _buildOptionButton(
              context,
              title: 'Body Pain',
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.feverheadRoute),
            ),
            const SizedBox(height: 20),
            _buildOptionButton(
              context,
              title: 'BOTH',
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.feverheadRoute),
            ),
            const SizedBox(height: 20),
            _buildOptionButton(
              context,
              title: 'NONE',
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.fevernoheadRoute),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildOptionButton(BuildContext context,
      {required String title, required VoidCallback onTap}) {
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
