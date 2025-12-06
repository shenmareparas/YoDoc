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
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: [
                _buildOptionButton(
                  context,
                  title: 'Headache',
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.feverheadRoute),
                ),
                _buildOptionButton(
                  context,
                  title: 'Body Pain',
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.feverheadRoute),
                ),
                _buildOptionButton(
                  context,
                  title: 'BOTH',
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.feverheadRoute),
                ),
                _buildOptionButton(
                  context,
                  title: 'NONE',
                  isSecondary: true,
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.fevernoheadRoute),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildOptionButton(BuildContext context,
      {required String title,
      required VoidCallback onTap,
      bool isSecondary = false}) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSecondary ? Colors.white.withValues(alpha: 0.1) : Colors.white,
        foregroundColor:
            isSecondary ? Colors.white : const Color.fromRGBO(6, 190, 182, 1),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: isSecondary
              ? const BorderSide(color: Colors.white, width: 2)
              : BorderSide.none,
        ),
        elevation: isSecondary ? 0 : 4,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
