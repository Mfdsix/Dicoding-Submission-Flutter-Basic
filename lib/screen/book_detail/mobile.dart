import 'package:book_store/screen/book_detail/favorite.dart';
import 'package:book_store/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:book_store/model/book.dart';

class MobileSection extends StatelessWidget {
  final MBook book;
  MobileSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: mainColor,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: mainText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          FavoriteSection(),
        ],
        elevation: 0,
      ),
      body: Container(
        color: mainText,
        child: Stack(children: [
          BackgroundSection(),
          MainSection(book: book),
        ]),
      ),
    );
  }
}

class BackgroundSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      height: 250,
    );
  }
}

class MainSection extends StatelessWidget {
  final MBook book;
  MainSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ThumbnailSection(image: book.thumbnailUrl),
          DescriptionSection(book: book),
        ],
      ),
    );
  }
}

class ThumbnailSection extends StatelessWidget {
  final String image;
  ThumbnailSection({required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
      child: Container(
          width: double.infinity,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          )),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  final MBook book;
  DescriptionSection({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: mainText,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(book.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                color: secondaryText,
                fontWeight: FontWeight.bold,
              )),
          Text(
            "by ${book.authors[0]}",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Text("Synopsis", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(book.longDescription, style: TextStyle(color: secondaryText)),
        ],
      ),
    );
  }
}
