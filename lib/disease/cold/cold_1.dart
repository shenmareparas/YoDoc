import 'package:flutter/material.dart';

class Cold1 extends StatefulWidget {
  const Cold1({super.key});

  @override
  State<Cold1> createState() => _Cold1State();
}

class _Cold1State extends State<Cold1> {
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
                'Fenceta Novo',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '1 Tab when you feel feverish',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Benedryl',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '10ml 2 times daily',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/IMG_3850.png",
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Strepsils',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Optional',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/IMG_3851.png",
                height: 200,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
