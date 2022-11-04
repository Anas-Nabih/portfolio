import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main_screen/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: maxWidth),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SideMenu()),
               Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2 ),
                    child: Column(
                      children: [
                        ...children
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


