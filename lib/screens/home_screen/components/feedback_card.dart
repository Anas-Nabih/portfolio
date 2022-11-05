import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/feedback.dart';
import 'package:flutter_profile/responsive.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    Key? key,
    required this.userFeedback,
  }) : super(key: key);

  final UserFeedback userFeedback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)?  380 : 360,
      decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(defaultPadding / 2)),
      padding: EdgeInsets.all(defaultPadding),
      margin: EdgeInsets.only(right: defaultPadding),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userFeedback.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(userFeedback.source!),
          SizedBox(height: defaultPadding),
          Text(userFeedback.text!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5))
        ],
      ),
    );
  }
}