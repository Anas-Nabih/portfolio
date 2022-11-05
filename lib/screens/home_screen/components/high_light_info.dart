import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home_screen/components/animated_counter_text.dart';
import 'package:flutter_profile/screens/home_screen/components/high_light.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          HighLight(
            counter: AnimatedCounterText(
              val: 119,
              text: "+",
            ),
            label: 'Subscribers',
          ),
          HighLight(
            counter: AnimatedCounterText(
              val: 40,
              text: "+",
            ),
            label: 'Videos',
          ),
          HighLight(
            counter: AnimatedCounterText(
              val: 65,
              text: "+",
            ),
            label: 'Github Projects',
          ),
          HighLight(
            counter: AnimatedCounterText(
              val: 65,
              text: "+",
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}
