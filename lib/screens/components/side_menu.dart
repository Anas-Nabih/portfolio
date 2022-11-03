import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/components/area_info_text.dart';
import 'package:flutter_profile/screens/components/coding.dart';
import 'package:flutter_profile/screens/components/knowledge.dart';
import 'package:flutter_profile/screens/components/my_info.dart';
import 'package:flutter_profile/screens/components/skills_area.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [AreaInfoText(), Divider(), SkillsArea(),
                  Divider(),Coding(),
                  Divider(),Knowledge(),
                Divider(),
                TextButton(onPressed: (){}, child: Text("Download CV"))],
              ),
            ),
          )
        ],
      ),
    );
  }
}
