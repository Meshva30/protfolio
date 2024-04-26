import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 57,
              backgroundImage: AssetImage('assets/images/img.jpg'),
            ),
            Spacer(),
            Text(
              "Meshva Patel",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Flutter Developer & Founder of \n The Flutter Way ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
