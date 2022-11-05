import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main_screen/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) ? null: AppBar(
        backgroundColor: secondaryColor,
        leading: Builder(builder:(context) => IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.menu))),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: maxWidth),
          child: Row(
            children: [
              if(Responsive.isDesktop(context))
              Expanded(
                  flex: 2,
                  child: SideMenu()),
               Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2 ),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ...children
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


