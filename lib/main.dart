import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yodoc/disease/acidity/acidity.dart';
import 'package:yodoc/disease/acidity/acidity1.dart';
import 'package:yodoc/disease/acidity/acidity2.dart';
import 'package:yodoc/disease/cold/cold_1.dart';
import 'package:yodoc/disease/cold/cold_2.dart';
import 'package:yodoc/disease/cold/cold_3.dart';
import 'package:yodoc/disease/cold/cold_4.dart';
import 'package:yodoc/disease/fever/fever_headache.dart';
import 'package:yodoc/disease/fever/fever_none.dart';
import 'package:yodoc/disease/headache/fever_no.dart';
import 'package:yodoc/disease/headache/fever_yes.dart';
import 'package:yodoc/disease/loosemotion/loosemotion_1.dart';
import 'package:yodoc/disease/loosemotion/loosemotion_2.dart';
import 'package:yodoc/disease/notbreathing/notbreathing1.dart';
import 'package:yodoc/disease/notbreathing/notbreathing2.dart';
import 'package:yodoc/disease/stomachache/lower_stomach.dart';
import 'package:yodoc/disease/stomachache/upper_stomach.dart';
import 'package:yodoc/disease/stomachache/whole_stomach.dart';
import 'package:yodoc/disease/vommit/vomit_feeling.dart';
import 'package:yodoc/disease/vommit/vomit_happening.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/screens/disease_page.dart';
import 'package:yodoc/screens/home_page.dart';
import 'disease/cold/cold.dart';
import 'disease/fever/fever.dart';
import 'disease/headache/headache.dart';
import 'disease/loosemotion/loosemotion.dart';
import 'disease/notbreathing/notbreathing.dart';
import 'disease/stomachache/stomachache.dart';
import 'disease/vommit/vommit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          AppRoutes.homeRoute: (context) => const HomePage(),
          AppRoutes.diseaseRoute: (context) => const DiseasePage(),
          AppRoutes.headacheRoute: (context) => const HeadachePage(),
          AppRoutes.acidityRoute: (context) => const AcidityPage(),
          AppRoutes.coldRoute: (context) => const ColdPage(),
          AppRoutes.feverRoute: (context) => const FeverPage(),
          AppRoutes.loosemotionRoute: (context) => const LoosemotionPage(),
          AppRoutes.notbreathingRoute: (context) => const NotbreathingPage(),
          AppRoutes.stomachacheRoute: (context) => const StomachachePage(),
          AppRoutes.vommitRoute: (context) => const VommitPage(),
          AppRoutes.headachefeveryesRoute: (context) => const FeverYes(),
          AppRoutes.headachefevernoRoute: (context) => const FeverNo(),
          AppRoutes.vommitfeelingRoute: (context) => const VommitFeeling(),
          AppRoutes.vommithappeningRoute: (context) => const VommitHappening(),
          AppRoutes.cold1Route: (context) => const Cold1(),
          AppRoutes.cold2Route: (context) => const Cold2(),
          AppRoutes.cold3Route: (context) => const Cold3(),
          AppRoutes.cold4Route: (context) => const Cold4(),
          AppRoutes.feverheadRoute: (context) => const FeverHead(),
          AppRoutes.fevernoheadRoute: (context) => const FeverNohead(),
          AppRoutes.loose1Route: (context) => const Loosemotion1(),
          AppRoutes.loose2Route: (context) => const Loosemotion2(),
          AppRoutes.upperstRoute: (context) => const UpperStomach(),
          AppRoutes.lowerstRoute: (context) => const LowerStomach(),
          AppRoutes.wholestRoute: (context) => const WholeStomach(),
          AppRoutes.acidity1Route: (context) => const Acidity1(),
          AppRoutes.acidity2Route: (context) => const Acidity2(),
          AppRoutes.notbreathing1Route: (context) => const Notbreathing1(),
          AppRoutes.notbreathing2Route: (context) => const Notbreathing2(),
        });
  }
}
