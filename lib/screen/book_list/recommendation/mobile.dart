import 'package:book_store/data/book.dart';
import 'package:book_store/model/book.dart';
import 'package:book_store/util/colors.dart';
import 'package:flutter/material.dart';

class MobileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: RecommendationItem(item: bookDatas[index]),
          );
        },
        itemCount: bookDatas.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final MBook item;
  RecommendationItem({required this.item});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 250,
            margin: EdgeInsets.only(top: 50, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: mainText,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 160),
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
                ),
                InkWell(
                  onTap: () {},
                  child: IntrinsicHeight(
                    child: Row(children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: secondaryColor,
                          child: Center(
                              child: Text("See Detail",
                                  style: TextStyle(color: mainText))),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: secondaryLightColor,
                          child: Center(
                              child: Icon(Icons.arrow_right, color: mainText)),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            )),
        Container(
            width: 250,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                item.thumbnailUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
  }
}
