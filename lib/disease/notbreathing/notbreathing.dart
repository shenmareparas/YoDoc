import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';

class NotbreathingPage extends StatefulWidget {
  const NotbreathingPage({super.key});

  @override
  State<NotbreathingPage> createState() => _NotbreathingPageState();
}

class _NotbreathingPageState extends State<NotbreathingPage> {
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
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Is the patient alive?',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )),
            const SizedBox(
              height: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.notbreathing1Route);
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
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.notbreathing2Route);
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
    ));
  }
}
