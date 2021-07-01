import 'package:flutter/material.dart';
import 'package:joy_read/model/book.dart';
import 'package:joy_read/screen/book_detail/mobile.dart';
import 'package:joy_read/screen/book_detail/desktop.dart';

class BookDetailScreen extends StatelessWidget {
  final MBook book;
  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints contstraints) {
      if (contstraints.maxWidth < 800) {
        return MobileSection(book: book);
      } else {
        return DesktopSection(book: book);
      }
    });
  }
}
