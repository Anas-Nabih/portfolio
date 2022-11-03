import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KnowledgeLabel extends StatelessWidget {
  const KnowledgeLabel({required this.knowledge});

  final String knowledge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 4),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2,),
          Text(knowledge,)
        ],
      ),
    );
  }
}
