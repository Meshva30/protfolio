import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:protfolio/constants.dart';
import 'package:protfolio/screen/main/components/skills.dart';

import 'area_into_text.dart';
import 'coding.dart';

import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaIntoText(
                    title: 'Residence',
                    text: 'Bangladesg',
                  ),
                  AreaIntoText(
                    title: 'City',
                    text: 'Surat',
                  ),
                  AreaIntoText(
                    title: 'Age',
                    text: '20',
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding/2,),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
        
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                                color:
                                    Theme.of(context).textTheme.bodyLarge!.color),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icon/download.svg")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(top: defaultPadding),
                    color: Color(0xff24242E),
                    child: Row(
        
                      children: [
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icon/linkedin.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icon/github.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icon/twitter.svg")),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icon/behance.svg")),
        
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
