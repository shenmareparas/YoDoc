import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class StomachachePage extends StatefulWidget {
  const StomachachePage({super.key});

  @override
  State<StomachachePage> createState() => _StomachachePageState();
}

class _StomachachePageState extends State<StomachachePage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Which part of the stomach is affected?',
      children: [
        OptionButton(
          title: 'Upper',
          onTap: () => Navigator.pushNamed(context, AppRoutes.upperstRoute),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'Lower',
          onTap: () => Navigator.pushNamed(context, AppRoutes.lowerstRoute),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'Whole',
          onTap: () => Navigator.pushNamed(context, AppRoutes.wholestRoute),
        ),
      ],
    );
  }
}
