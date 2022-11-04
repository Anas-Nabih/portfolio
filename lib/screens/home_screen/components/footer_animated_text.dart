import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home_screen/components/flutter_coded_text.dart';

class FooterAnimatedText extends StatelessWidget {
  const FooterAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("i built "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Responsive web and mobil app",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText("e-commerce app ui",
                  speed: Duration(milliseconds: 60)),
              TyperAnimatedText(
                  "chat app with dark and light theme",
                  speed: Duration(milliseconds: 60)),
            ],
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
        ],
      ),
    );
  }
}
