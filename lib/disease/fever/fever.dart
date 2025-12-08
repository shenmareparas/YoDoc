import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class FeverPage extends StatefulWidget {
  const FeverPage({super.key});

  @override
  State<FeverPage> createState() => _FeverPageState();
}

class _FeverPageState extends State<FeverPage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Also Happening?',
      children: [
        OptionButton(
          title: 'Headache',
          onTap: () => Navigator.pushNamed(context, AppRoutes.feverheadRoute),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'Body Pain',
          onTap: () => Navigator.pushNamed(context, AppRoutes.feverheadRoute),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'BOTH',
          onTap: () => Navigator.pushNamed(context, AppRoutes.feverheadRoute),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'NONE',
          onTap: () => Navigator.pushNamed(context, AppRoutes.fevernoheadRoute),
        ),
      ],
    );
  }
}
