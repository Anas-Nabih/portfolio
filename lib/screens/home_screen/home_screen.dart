import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/models/feedback.dart';
import 'package:flutter_profile/screens/home_screen/components/high_light_info.dart';
import 'package:flutter_profile/screens/home_screen/components/home_banner.dart';
import 'package:flutter_profile/screens/home_screen/components/my_projects.dart';
import 'package:flutter_profile/screens/home_screen/components/feedbacks.dart';
import 'package:flutter_profile/screens/main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HighLightInfo(),
      MyProjects(),
      Feedbacks()
    ]);
  }
}
