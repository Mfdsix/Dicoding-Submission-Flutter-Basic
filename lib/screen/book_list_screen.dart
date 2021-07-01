import 'package:flutter/material.dart';
import 'package:joy_read/screen/book_list/header.dart';
import 'package:joy_read/screen/book_list/recommendation.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth < 800) {
                return HeaderSection(
                    paddingHorizontal: 30, paddingVertical: 30);
              } else {
                return HeaderSection(
                    paddingHorizontal: 150, paddingVertical: 80);
              }
            }),
            RecommendationSection(),
          ],
        ),
      ),
    );
  }
}
