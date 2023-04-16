import 'package:flutter/material.dart';

class Loosemotion2 extends StatefulWidget {
  const Loosemotion2({super.key});

  @override
  State<Loosemotion2> createState() => _Loosemotion2State();
}

class _Loosemotion2State extends State<Loosemotion2> {
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
              'Metron',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              '1 Tab thrics daily',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/IMG_3853.png",
              height: 200,
            ),
          ]),
        ),
      ),
    );
  }
}
