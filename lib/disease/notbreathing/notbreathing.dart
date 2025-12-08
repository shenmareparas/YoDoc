import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class NotbreathingPage extends StatefulWidget {
  const NotbreathingPage({super.key});

  @override
  State<NotbreathingPage> createState() => _NotbreathingPageState();
}

class _NotbreathingPageState extends State<NotbreathingPage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Is the patient alive?',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OptionButton(
                title: 'YES',
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.notbreathing1Route),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: OptionButton(
                title: 'NO',
                isSecondary: true,
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.notbreathing2Route),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
