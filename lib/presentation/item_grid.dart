import 'package:comic_book/presentation/comics_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemGrid extends StatelessWidget {
  final String comicImage;
  final String comicDate;
  final String comicName;
  final String comicIssue;

  ItemGrid(
      {required this.comicImage,
      required this.comicDate,
      required this.comicName,
      required this.comicIssue});

  @override
  Widget build(BuildContext context) {
    final imgComic = Container(
      width: Get.width * 0.5,
      height: Get.height * 0.15,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: NetworkImage(comicImage))),
    );

    final description = Container(
        child: Column(
      children: <Widget>[
        Text(
          comicName == "" ? "No name" : comicName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        Text(comicIssue),
        Text(comicDate),
      ],
    ));

    final comic = Container(
      height: Get.height * 0.5,
      child: Column(
        children: [imgComic, description],
      ),
    );
    return comic;
  }
}
