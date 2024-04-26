
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:protfolio/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(

      aspectRatio: Responsive.isMobile(context)? 2.5:3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \n Art Space!",
                  style: Responsive.isDesktop(context)? Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white
                  ):Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white
                ),
                ),
                if(!Responsive.isMobileLarge(context)) const SizedBox(
                  height: defaultPadding,
                ),
                MyBulidAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                if(!Responsive.isMobileLarge(context))ElevatedButton(
                    style: TextButton.styleFrom(
                      shape: LinearBorder(),
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryColor),
                    onPressed: () {},
                    child: Text(
                      "EXPLORE NOW",
                      style: TextStyle(color: darkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBulidAnimatedText extends StatelessWidget {
  const MyBulidAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context)) FlutterCodeText(),
          if(!Responsive.isMobileLarge(context)) SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I bulid "),
           Responsive.isMobile(context)?   Expanded(child: AnimatedText()):AnimatedText(),
          if(!Responsive.isMobileLarge(context)) SizedBox(
            width: defaultPadding / 2,
          ),
          if(!Responsive.isMobileLarge(context)) FlutterCodeText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText(
        "responsive web and mobile app.",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "complete ecommerce app UI.",
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        "chat app with dark and light theme.",
        speed: Duration(milliseconds: 60),
      ),
    ]);
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: "<",
      children: [
        TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
        TextSpan(text: ">"),
      ],
    ));
  }
}
