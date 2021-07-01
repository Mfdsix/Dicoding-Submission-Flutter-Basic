import 'package:joy_read/screen/book_detail/favorite.dart';
import 'package:joy_read/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:joy_read/model/book.dart';

class DesktopSection extends StatelessWidget {
  final MBook book;
  DesktopSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(book.title),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: mainText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          FavoriteSection(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 150),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ImageSection(image: book.thumbnailUrl),
                SizedBox(width: 50),
                DescriptionSection(book: book),
              ]),
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  final String image;
  ImageSection({required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(image, fit: BoxFit.cover))),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  final MBook book;
  DescriptionSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: mainText,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: DetailSection(book: book),
      ),
    );
  }
}

class DetailSection extends StatelessWidget {
  final MBook book;
  DetailSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(book.title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
      Text("by ${book.authors[0]}"),
      SizedBox(height: 30),
      Text("Synopsis", style: TextStyle(fontWeight: FontWeight.bold)),
      SizedBox(height: 10),
      Text(book.longDescription, style: TextStyle(color: secondaryText)),
    ]);
  }
}
