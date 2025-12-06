import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import '../../utils/app_constants.dart';

class HeadachePage extends StatefulWidget {
  const HeadachePage({super.key});

  @override
  State<HeadachePage> createState() => _HeadachePageState();
}

class _HeadachePageState extends State<HeadachePage> {
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
                  'Are you feeling feverish?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOptionButton(
                    context,
                    title: 'YES',
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.headachefeveryesRoute),
                  ),
                  _buildOptionButton(
                    context,
                    title: 'NO',
                    isSecondary: true,
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.headachefevernoRoute),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
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
          fontSize: 18,
        ),
      ),
    );
  }
}
