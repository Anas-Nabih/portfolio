import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: (){}, child: FittedBox(
          child: Row(
            children: [
              Text("Download CV",style:TextStyle(color:  Theme.of(context).textTheme.bodyText1!.color),),
              SizedBox(width: defaultPadding / 2),
              SvgPicture.asset("assets/icons/download.svg")
            ],
          ),
        )),
        SizedBox(height:defaultPadding / 2),
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 10 , vertical: defaultPadding / 10),
          color: secondaryColor,
          child: Row(
             children: [
              Spacer(),
              IconButton(onPressed: (){},icon: SvgPicture.asset("assets/icons/linkedin.svg"),splashRadius:1),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/github.svg"),splashRadius:1),
              IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/twitter.svg"),splashRadius:1),
               Spacer()
              ],
          ),
        )
      ],
    );
  }
}

