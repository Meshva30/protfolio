
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimationLinearProgressIndicator(
          percentage: 0.7,
          lable: "Dart",
        ),

        AnimationLinearProgressIndicator(
          percentage: 0.68,
          lable: "Python",
        ),
        AnimationLinearProgressIndicator(
          percentage: 0.9,
          lable: "HTML",
        ),
        AnimationLinearProgressIndicator(
          percentage: 0.75,
          lable: "CSS",
        ),
        AnimationLinearProgressIndicator(
          percentage: 0.68,
          lable: "JavaScript",
        ),
      ],
    );
  }
}
