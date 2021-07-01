import 'package:flutter/material.dart';

class FavoriteSection extends StatefulWidget {
  @override
  _FavoriteSection createState() => _FavoriteSection();
}

class _FavoriteSection extends State<FavoriteSection> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon((isFavorite) ? Icons.favorite : Icons.favorite_outline,
            color: Colors.red),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          String message = "Removed from Favorite";
          if (isFavorite) {
            message = "Added to Favorite";
          }
          final snackBar = SnackBar(
            content: Text(message),
            duration: Duration(seconds: 1),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
  }
}
