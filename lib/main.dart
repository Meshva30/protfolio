import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protfolio/screen/home/home_screen.dart';

import 'package:protfolio/screen/main/main_screen.dart';

import 'constants.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
          bodyText1: TextStyle(color: bodyTextColor),
          bodyText2: TextStyle(color: bodyTextColor),
        ),
      ),
      home: Homescreen(),
    );
  }
}
