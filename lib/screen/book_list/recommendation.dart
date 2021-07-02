import 'package:joy_read/screen/book_list/recommendation/desktop.dart';
import 'package:joy_read/screen/book_list/recommendation/mobile.dart';
import 'package:flutter/material.dart';
import 'package:joy_read/util/strings.dart';
import 'package:joy_read/util/colors.dart';

class RecommendationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constaints) {
        if (constaints.maxWidth < 1200) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Title(),
                SizedBox(height: 20),
                MobileSection(),
              ]);
        } else {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Title(),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.only(right: 30),
                    child: DesktopSection()),
              ]);
        }
      }),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(titleRecommendation,
        style: TextStyle(
          fontSize: 18,
          color: secondaryText,
          fontWeight: FontWeight.bold,
        ));
  }
}
