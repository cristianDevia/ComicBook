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
      height: Get.height * 0.8,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: NetworkImage(detailImage),
            fit: BoxFit.fill,
          )),
    );

    final characters = Container(
      height: Get.height * 0.2,
      width: Get.width * 0.3,
      child: Column(
        children: [
          Container(
              width: Get.width * 0.3,
              child: const Text(
                "Character",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2)))),
          Flexible(
              child: Container(
            child: detailCharacterCredits.length == 0
                ? Text("No characters")
                : ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: detailCharacterCredits.length,
                    itemBuilder: (context, index) {
                      return Text(detailCharacterCredits[index]['name'],
                          overflow: TextOverflow.ellipsis);
                    }),
          ))
        ],
      ),
    );

    final team = Container(
      height: Get.height * 0.2,
      width: Get.width * 0.3,
      child: Column(
        children: [
          Container(
              width: Get.width * 0.3,
              child: const Text(
                "Team",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2)))),
          Flexible(
              child: Container(
            child: detailTeamCredits.length == 0
                ? Text("No Team")
                : ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: detailTeamCredits.length,
                    itemBuilder: (context, index) {
                      return Text(detailTeamCredits[index]['name'],
                          overflow: TextOverflow.ellipsis);
                    }),
          ))
        ],
      ),
    );

    final location = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: Column(
          children: [
            Container(
                width: Get.width * 0.3,
                child: const Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 2)))),
            Flexible(
                child: Container(
              child: detailLocationCredits.length == 0
                  ? Text("No Location")
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: detailLocationCredits.length,
                      itemBuilder: (context, index) {
                        return Text(detailLocationCredits[index]['name'],
                            overflow: TextOverflow.ellipsis);
                      }),
            ))
          ],
        ));

    final concepts = Container(
        height: Get.height * 0.2,
        width: Get.width * 0.3,
        child: Column(
          children: [
            Container(
                width: Get.width * 0.3,
                child: const Text(
                  "Concept",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 2)))),
            Flexible(
                child: Container(
              child: detailConcepts.length == 0
                  ? Text("No Concept")
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: detailConcepts.length,
                      itemBuilder: (context, index) {
                        return Text(detailConcepts[index]['name'],
                            overflow: TextOverflow.ellipsis);
                      }),
            ))
          ],
        ));

    final details = Scaffold(
      appBar: AppBar(
        title: const Text("Comics Details"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
