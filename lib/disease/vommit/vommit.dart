import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class VommitPage extends StatefulWidget {
  const VommitPage({super.key});

  @override
  State<VommitPage> createState() => _VommitPageState();
}

class _VommitPageState extends State<VommitPage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Feeling like vomiting or actually happening?',
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: OptionButton(
                  title: 'Feeling',
                  onTap: () => Navigator.pushNamed(
                      context, AppRoutes.vommitfeelingRoute),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: OptionButton(
                  title: 'Happening',
                  onTap: () => Navigator.pushNamed(
                      context, AppRoutes.vommithappeningRoute),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
