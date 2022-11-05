import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';


class HighLight extends StatelessWidget {
  const HighLight({
    Key? key, required this.counter, required this.label,
  }) : super(key: key);

  final Widget counter;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2,),
        Text(label,style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: Responsive.isDesktop(context)? 20 : 15),)
      ],
    );
  }
}