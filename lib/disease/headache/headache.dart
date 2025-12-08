import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class HeadachePage extends StatefulWidget {
  const HeadachePage({super.key});

  @override
  State<HeadachePage> createState() => _HeadachePageState();
}

class _HeadachePageState extends State<HeadachePage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Are you feeling feverish?',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: OptionButton(
                  title: 'YES',
                  onTap: () => Navigator.pushNamed(
                      context, AppRoutes.headachefeveryesRoute),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: OptionButton(
                  title: 'NO',
                  isSecondary: true,
                  onTap: () => Navigator.pushNamed(
                      context, AppRoutes.headachefevernoRoute),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
