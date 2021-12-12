import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicsDetailScreen extends StatelessWidget {
  String detailImage;
  List detailCharacterCredits;
  List detailTeamCredits;
  List detailLocationCredits;
  List detailConcepts;

  ComicsDetailScreen(
      {required this.detailImage,
      required this.detailCharacterCredits,
      required this.detailTeamCredits,
      required this.detailLocationCredits,
      required this.detailConcepts});

  @override
  Widget build(BuildContext context) {
    final imgComic = Container(
      width: Get.width * 0.5,
      height: Get.height * 0.15,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(image: NetworkImage(detailImage))),
    );

    final characters = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: Column(
          children: [
            Text(
              "Character",
              style: TextStyle(),
            ),
            detailCharacterCredits.length == 0
                ? Text("No characters")
                : ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: detailCharacterCredits.length,
                    itemBuilder: (context, index) {
                      return Text(detailCharacterCredits[index]['name']);
                    })
          ],
        ));

    final team = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: detailTeamCredits.length == 0
            ? Text("No Team")
            : ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: detailTeamCredits.length,
                itemBuilder: (context, index) {
                  return Text(detailTeamCredits[index]['name']);
                }));

    final location = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: detailLocationCredits.length == 0
            ? Text("No Location")
            : ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: detailLocationCredits.length,
                itemBuilder: (context, index) {
                  return Text(detailLocationCredits[index]['name']);
                }));

    final concepts = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: detailConcepts.length == 0
            ? Text("No Concepts")
            : ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: detailConcepts.length,
                itemBuilder: (context, index) {
                  return Text(detailConcepts[index]['name']);
                }));

    final details = Scaffold(
      appBar: AppBar(
        title: const Text("Comics Details"),
      ),
      body: Container(
          child: Row(
        children: <Widget>[
          Column(
            children: [characters, team, location, concepts],
          ),
          imgComic
        ],
      )),
    );

    return details;
  }
}
