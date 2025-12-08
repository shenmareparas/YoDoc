import 'package:flutter/material.dart';
import 'package:yodoc/routes/routes.dart';
import 'package:yodoc/widgets/option_button.dart';
import 'package:yodoc/widgets/symptom_page_scaffold.dart';

class AcidityPage extends StatefulWidget {
  const AcidityPage({super.key});

  @override
  State<AcidityPage> createState() => _AcidityPageState();
}

class _AcidityPageState extends State<AcidityPage> {
  @override
  Widget build(BuildContext context) {
    return SymptomPageScaffold(
      title: 'Specify your problem',
      children: [
        OptionButton(
          title: 'Happens Often',
          onTap: () => Navigator.pushNamed(context, AppRoutes.acidity1Route),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'One time thing',
          onTap: () => Navigator.pushNamed(context, AppRoutes.acidity2Route),
        ),
        const SizedBox(height: 20),
        OptionButton(
          title: 'Sometimes',
          onTap: () => Navigator.pushNamed(context, AppRoutes.acidity2Route),
        ),
      ],
    );
  }
}
