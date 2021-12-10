import 'package:comic_book/presentation/comics_controller.dart';
import 'package:flutter/material.dart';

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
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: NetworkImage(comicImage))),
    );

    final description = Container(
        child: Column(
      children: <Widget>[Text(comicDate), Text(comicName), Text(comicIssue)],
    ));

    final comic = Container(
      child: Column(
        children: [imgComic, description],
      ),
    );
    return comic;
  }
}
