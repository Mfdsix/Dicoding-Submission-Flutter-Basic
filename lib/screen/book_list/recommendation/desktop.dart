import 'package:book_store/data/book.dart';
import 'package:book_store/model/book.dart';
import 'package:book_store/util/colors.dart';
import 'package:flutter/material.dart';

class DesktopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List<Widget>.generate(bookDatas.length, (index) {
          return RecommendationItem(item: bookDatas[index]);
        }).toList(),
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final MBook item;
  RecommendationItem({required this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              child: Image.network(
                item.thumbnailUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: mainText,
            child: Column(
              children: [
                Text(item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: secondaryText,
                        fontWeight: FontWeight.bold)),
                Text("by ${item.authors[0]}"),
                SizedBox(height: 15),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: IntrinsicHeight(
              child: Row(children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: secondaryColor,
                    child: Center(
                        child: Text("See Detail",
                            style: TextStyle(color: mainText))),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: secondaryLightColor,
                    child:
                        Center(child: Icon(Icons.arrow_right, color: mainText)),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
