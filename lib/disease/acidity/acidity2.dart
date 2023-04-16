import 'package:flutter/material.dart';

class Acidity2 extends StatefulWidget {
  const Acidity2({super.key});

  @override
  State<Acidity2> createState() => _Acidity2State();
}

class _Acidity2State extends State<Acidity2> {
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
              'Eno',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              '1 Pack',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/IMG_3857.png",
              height: 300,
            ),
          ]),
        ),
      ),
    );
  }
}
