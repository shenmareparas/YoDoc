import 'package:flutter/material.dart';

class Cold4 extends StatefulWidget {
  const Cold4({super.key});

  @override
  State<Cold4> createState() => _Cold4State();
}

class _Cold4State extends State<Cold4> {
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
              height: 30,
            ),
            const Text(
              'ZADY 500',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              '1 Tab daily till the cold subsides',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/IMG_3848.png",
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Montemac-L',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              '2 times daily till the cold subsides',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/IMG_3852.png",
              height: 300,
            ),
          ]),
        ),
      ),
    );
  }
}
