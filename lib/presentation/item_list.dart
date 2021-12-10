import 'package:flutter/material.dart';

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
      child: Row(
        children: <Widget>[imgComic, description],
      ),
    );
    return comic;
  }
}
