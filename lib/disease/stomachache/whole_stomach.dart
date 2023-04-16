import 'package:flutter/material.dart';

class WholeStomach extends StatefulWidget {
  const WholeStomach({super.key});

  @override
  State<WholeStomach> createState() => _WholeStomachState();
}

class _WholeStomachState extends State<WholeStomach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 10000,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(6, 190, 182, 1),
              Color.fromRGBO(72, 177, 191, 1),
            ])),
        child: SafeArea(
          child: Column(children: [
            const Text(
              "Medicines :",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              'Drotin A - 1 Tab',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/IMG_3861.png",
              height: 300,
            ),
          ]),
        ),
      ),
    );
  }
}
