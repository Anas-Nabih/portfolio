import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home_screen/components/home_banner.dart';
import 'package:flutter_profile/screens/main_screen/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [HomeBanner()]);
  }
}
