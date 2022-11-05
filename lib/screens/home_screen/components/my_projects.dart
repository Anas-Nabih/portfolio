import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home_screen/components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        Responsive(
            mobile: ProjectsGridView(crossAxisCount: 1),
            desktop: ProjectsGridView(),
            tablet: ProjectsGridView(childAspectRatio: 1.1),
            mobileLarge: ProjectsGridView(crossAxisCount: 2,childAspectRatio: 1.1,)),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView(
      {Key? key, this.childAspectRatio = 1.3, this.crossAxisCount = 3})
      : super(key: key);

  final int crossAxisCount;

  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ));
  }
}
