import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/utils/app_constants.dart';

class AcidityPage extends StatefulWidget {
  const AcidityPage({super.key});

  @override
  State<AcidityPage> createState() => _AcidityPageState();
}

class _AcidityPageState extends State<AcidityPage> {
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
                  'Specify your problem',
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
                title: 'Happens Often',
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.acidity1Route),
              ),
              const SizedBox(height: 20),
              _buildOptionButton(
                context,
                title: 'One time thing',
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.acidity2Route),
              ),
              const SizedBox(height: 20),
              _buildOptionButton(
                context,
                title: 'Sometimes',
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.acidity2Route),
              ),
            ],
          ),
        ),
      ),
    );
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
