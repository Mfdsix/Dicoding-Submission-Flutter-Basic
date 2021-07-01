import 'package:flutter/material.dart';
import 'package:joy_read/util/colors.dart';
import 'package:joy_read/util/strings.dart';

class HeaderSection extends StatelessWidget {
  final double paddingHorizontal;
  final double paddingVertical;
  HeaderSection(
      {required this.paddingHorizontal, required this.paddingVertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appName,
                style: TextStyle(
                  color: mainText,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            IconButton(
              icon: Icon(Icons.notifications),
              color: mainText,
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text("You doesn't Have Any Notification"),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: secondaryColor,
                  child: Center(
                    child: Icon(
                      Icons.bookmark,
                      color: mainText,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: secondaryLightColor,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Continue Reading",
                          style: TextStyle(
                            color: mainTextLight,
                          )),
                      SizedBox(height: 10),
                      Text(headerDescription,
                          style: TextStyle(
                            fontSize: 16,
                            color: mainText,
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
