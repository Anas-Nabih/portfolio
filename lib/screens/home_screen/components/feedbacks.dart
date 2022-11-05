import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/feedback.dart';
import 'package:flutter_profile/screens/home_screen/components/feedback_card.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Feedbacks",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: demo_Feedbacks.length,
            itemBuilder: (context, index) => FeedbackCard(
              userFeedback: demo_Feedbacks[index],
            ),
          ),
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
