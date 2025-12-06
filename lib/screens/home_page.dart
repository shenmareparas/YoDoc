import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yodoc/widgets/inputfield.dart';

import '../routes/routes.dart';
import '../utils/app_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String name = "";

class _HomePageState extends State<HomePage> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: AppConstants.primaryGradient,
            ),
            child: SafeArea(
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      "assets/images/47137-doctor-and-health-symbols.json",
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'YoDoc',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Healthcare Anytime, Anywhere',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.9),
                        fontSize: 16,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const InputField(
                      maxLength: 40,
                      keyboardType: TextInputType.name,
                      hintxt: "Name",
                    ),
                    const SizedBox(height: 20),
                    const InputField(
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      hintxt: "Age",
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(context,
                              AppRoutes.diseaseRoute, (route) => false);
                        }
                      },
                      child: const Text('GET STARTED'),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
