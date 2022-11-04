import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'package:flutter_profile/screens/main_screen/components/area_info_text.dart';
import 'package:flutter_profile/screens/main_screen/components/coding.dart';
import 'package:flutter_profile/screens/main_screen/components/contacts.dart';
import 'package:flutter_profile/screens/main_screen/components/knowledge.dart';
import 'package:flutter_profile/screens/main_screen/components/my_info.dart';
import 'package:flutter_profile/screens/main_screen/components/skills_area.dart';

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
                Contacts()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
