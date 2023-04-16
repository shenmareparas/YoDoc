import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class HeadachePage extends StatefulWidget {
  const HeadachePage({super.key});

  @override
  State<HeadachePage> createState() => _HeadachePageState();
}

class _HeadachePageState extends State<HeadachePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(6, 190, 182, 1),
              Color.fromRGBO(72, 177, 191, 1),
            ])),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              const Center(
                  child: Text(
                'Are you feeling feverish?',
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.headachefeveryesRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 13),
                        shape: const StadiumBorder()),
                    child: const Text(
                      'Y E S',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.headachefevernoRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 13),
                        shape: const StadiumBorder()),
                    child: const Text(
                      'N O',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
