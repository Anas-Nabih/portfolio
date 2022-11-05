import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class AnimatedCounterText extends StatelessWidget {
  const AnimatedCounterText({
    Key? key, required this.text, required this.val,
  }) : super(key: key);

  final String text;
  final int val;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: val),
        duration: defaultDuration,
        builder: (context, value, child) => Text(
          "$value$text",
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: primaryColor,fontSize: Responsive.isDesktop(context)? 20 : 15),
        ));
  }
}