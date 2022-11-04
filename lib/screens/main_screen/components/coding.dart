import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main_screen/components/linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: .80,label: "Java",),
        AnimatedLinearProgressIndicator(percentage: .75,label: "paython",),
        AnimatedLinearProgressIndicator(percentage: .73,label: "php",),
        AnimatedLinearProgressIndicator(percentage: .70,label: "Css",),
        AnimatedLinearProgressIndicator(percentage: .73,label: "Html",),
        AnimatedLinearProgressIndicator(percentage: .70,label: "Css",),
      ],
    );
  }
}
