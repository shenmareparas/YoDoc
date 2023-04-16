import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class VommitPage extends StatefulWidget {
  const VommitPage({super.key});

  @override
  State<VommitPage> createState() => _VommitPageState();
}

class _VommitPageState extends State<VommitPage> {
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
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Feeling like vomitting or actually happening?',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
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
                          context, AppRoutes.vommitfeelingRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 13),
                        shape: const StadiumBorder()),
                    child: const Text(
                      'Feeling',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.vommithappeningRoute);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 13),
                        shape: const StadiumBorder()),
                    child: const Text(
                      'Happening',
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
