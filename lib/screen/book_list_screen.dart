import 'package:flutter/material.dart';
import 'package:book_store/screen/book_list/header.dart';
import 'package:book_store/screen/book_list/recommendation.dart';

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            RecommendationSection(),
          ],
        ),
      ),
    );
  }
}
