import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, required this.project,
  }) : super(key: key);

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(defaultPadding / 2)),
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(project.description!,
              maxLines: 4,
              style: TextStyle(height: 1.3)),
          Spacer(),
          TextButton(onPressed: (){}, child: Text("Read More >>",style: TextStyle(color: primaryColor),))
        ],
      ),
    );
  }
}