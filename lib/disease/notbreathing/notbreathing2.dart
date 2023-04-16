import 'package:flutter/material.dart';

class Notbreathing2 extends StatefulWidget {
  const Notbreathing2({super.key});

  @override
  State<Notbreathing2> createState() => _Notbreathing2State();
}

class _Notbreathing2State extends State<Notbreathing2> {
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
          child: Center(
            child: Column(children: const [
              SizedBox(
                height: 400,
              ),
              Text(
                'Lets hold a moment of silence',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
