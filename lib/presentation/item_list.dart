import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemList extends StatelessWidget {
  final String comicImage;
  final String comicDate;
  final String comicName;
  final String comicIssue;

  ItemList(
      {required this.comicImage,
      required this.comicDate,
      required this.comicName,
      required this.comicIssue});

  @override
  Widget build(BuildContext context) {
    final imgComic = Container(
      width: Get.width * 0.3,
      height: Get.height * 0.15,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: NetworkImage(comicImage))),
    );

    final description = Container(
      width: Get.width * 0.7,
      child: Column(
        children: <Widget>[
          Text(
            comicName == "" ? "no name" : comicName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          Text(comicIssue),
          Text(comicDate),
        ],
      ),
    );

    final comic = Container(
      child: Row(
        children: <Widget>[
          imgComic,
          SizedBox(
              //width: Get.width * 0.02,
              ),
          description,
          SizedBox(
              //width: Get.width * 0.02,
              )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
    return comic;
  }
}
