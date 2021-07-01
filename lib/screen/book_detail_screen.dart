import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints contstraints) {
      if (contstraints.maxWidth > 800) {
        return Container();
      } else {
        return Container();
      }
    });
  }
}
