import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/components/animated_circle_progress_insecator.dart';

class SkillsArea extends StatelessWidget {
  const SkillsArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(child: AnimatedCircularProgressIndicator(label: "Flutter", percentage: .8,)),
            Expanded(child: AnimatedCircularProgressIndicator(label: "Django", percentage: .65,)),
            Expanded(child: AnimatedCircularProgressIndicator(label: "Firebase", percentage: .70,)),
          ],
        )
      ],
    );
  }
}
