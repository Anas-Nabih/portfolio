import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
 import 'package:flutter_profile/screens/main_screen/components/knowledge_label.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text("Knowledges",style: Theme.of(context).textTheme.subtitle2,)),
        KnowledgeLabel(knowledge: "Flutter, dart"),
        KnowledgeLabel(knowledge: "Flutter, dart"),
        KnowledgeLabel(knowledge: "Flutter, dart"),
        KnowledgeLabel(knowledge: "Flutter, dart"),
      ],
    );
  }
}
