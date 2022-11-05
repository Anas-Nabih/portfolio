import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    required this.percentage,
    required this.label
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDuration,
                builder: (context,double value, child) =>
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: darkColor,
                        ),
                        Center(child: Text((value * 100).toInt().toString() + "%",style: Theme.of(context).textTheme.subtitle1,))
                      ],
                    )),
          ),
          SizedBox(height: defaultPadding / 2),
          Text(label,maxLines:1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: Responsive.isMobile(context)? 12 :  18 ),),
        ],
      ),
    );
  }
}
