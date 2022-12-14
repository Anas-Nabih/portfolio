import 'package:flutter/material.dart';
 import 'package:flutter_profile/screens/main_screen/components/info_text.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoText(title: "Residence", text: "Egypt"),
        InfoText(title: "City", text: "Cairo"),
        InfoText(title: "Age", text: "24"),
        InfoText(title: "Military service", text: "Currently serving "),
      ],
    );
  }
}
