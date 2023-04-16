import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yodoc/widgets/inputfield.dart';

import '../routes/routes.dart';

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
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromRGBO(6, 190, 182, 1),
                  Color.fromRGBO(72, 177, 191, 1),
                ])),
            child: SafeArea(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Lottie.asset(
                        "assets/images/47137-doctor-and-health-symbols.json",
                        fit: BoxFit.contain),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'YoDoc',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    const Text(
                      'Healthcare Anytime, Anywhere',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const InputField(
                        maxLength: 40,
                        keyboardType: TextInputType.name,
                        hintxt: "Name"),
                    const SizedBox(
                      height: 30,
                    ),
                    const InputField(
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        hintxt: "Age"),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(context,
                              AppRoutes.diseaseRoute, (route) => false);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[300],
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70, vertical: 13),
                          shape: const StadiumBorder()),
                      child: const Text(
                        'N E X T',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
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
