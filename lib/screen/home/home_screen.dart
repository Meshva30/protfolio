import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:protfolio/screen/main/main_screen.dart';

import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';

import 'components/recommendation.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Mainscreen(children: [
      HomeBanner(),
      HeighLightInfo(),
      MyProject(),
      Recommendations(),
    ]);
  }
}
