import 'package:flutter/material.dart';

class FeverYes extends StatefulWidget {
  const FeverYes({super.key});

  @override
  State<FeverYes> createState() => _FeverYesState();
}

class _FeverYesState extends State<FeverYes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
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
                'Fenceta Novo',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/IMG_3829.png",
                height: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Zerodol P',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/IMG_3830.png",
                height: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Dolokind Plus',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/IMG_3831.png",
                height: 200,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
