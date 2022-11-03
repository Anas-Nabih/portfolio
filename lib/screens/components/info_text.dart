import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class InfoText extends StatelessWidget {
  final String? title, text;

  const InfoText({
    this.title,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title!, style: TextStyle(color: Colors.white)),
          Text(text!),
        ],
      ),
    );
  }
}
