// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/disease_button.dart';

import '../routes/routes.dart';

class DiseasePage extends StatefulWidget {
  const DiseasePage({super.key});

  @override
  State<DiseasePage> createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseasePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          width: size.width,
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
                SizedBox(
                  height: size.height / 30,
                ),
                const Text(
                  'Healthcare',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.headacheRoute);
                          },
                          title: "Headache"),
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.vommitRoute);
                          },
                          title: "Vommit")
                    ]),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.coldRoute);
                          },
                          title: "Cold"),
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.feverRoute);
                          },
                          title: "Fever")
                    ]),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.loosemotionRoute);
                          },
                          title: "Loose Motion"),
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.stomachacheRoute);
                          },
                          title: "Stomach Ache")
                    ]),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.acidityRoute);
                          },
                          title: "Acidity"),
                      DiseaseButton(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.notbreathingRoute);
                          },
                          title: "Not Breathing")
                    ]),
                SizedBox(
                  height: size.height / 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
