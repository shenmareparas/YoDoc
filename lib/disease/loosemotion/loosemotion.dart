// ignore_for_file: avoid_print, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:yodoc/routes/routes.dart';

class LoosemotionPage extends StatefulWidget {
  const LoosemotionPage({super.key});

  @override
  State<LoosemotionPage> createState() => _LoosemotionPageState();
}

class _LoosemotionPageState extends State<LoosemotionPage> {
  final controller = GroupButtonController();
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
              height: 150,
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Also happening?',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )),
            const SizedBox(
              height: 35,
            ),
            GroupButton.checkbox(
              buttonHeight: 60,
              buttonWidth: 100,
              spacing: 450,
              runSpacing: 15,
              borderRadius: BorderRadius.circular(15),
              textAlign: TextAlign.center,
              selectedTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              controller: controller,
              // ignore: prefer_const_literals_to_create_immutables
              buttons: ['Mucoid Stool', 'Blood Stained', 'Stomach Ache'],
              onSelected: (i, selected) {
                print(controller.selectedIndexes);
              },
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.selectedIndexes.containsAll([0, 1, 2])) {
                  Navigator.pushNamed(context, AppRoutes.loose1Route);
                } else if (controller.selectedIndexes.containsAll([0])) {
                  Navigator.pushNamed(context, AppRoutes.loose2Route);
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                  shape: const StadiumBorder()),
              child: const Text(
                'N E X T',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
