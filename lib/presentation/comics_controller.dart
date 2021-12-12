import 'package:comic_book/data/comic_repository.dart';
import 'package:comic_book/domain/detail.dart';
import 'package:comic_book/presentation/item_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'comics_detail_screen.dart';

class ComicsController extends GetxController {
  final repository = ComicRepository();
  var comics = [].obs;
  var comicsGrid = <Widget>[];
  @override
  void onInit() async {
    var response = await repository.allComics();
    comics.assignAll(response);
    super.onInit();
    addComicsGrid();
  }

  addComicsGrid() {
    for (var i = 0; i < comics.length; i++) {
      var item = InkWell(
          onTap: () => getDetails(comics[i].apiDetailUrl),
          child: ItemGrid(
              comicDate: comics[i].comicDate,
              comicImage: comics[i].comicImage,
              comicName: comics[i].comicName,
              comicIssue: comics[i].comicIssue));
      comicsGrid.add(item);
    }
  }

  getDetails(String path) async {
    var response = await repository.detailComics(path);
    Detail detail = response;

    Get.to(() => ComicsDetailScreen(
        detailImage: detail.detailImage,
        detailCharacterCredits: detail.detailCharacterCredits,
        detailTeamCredits: detail.detailTeamCredits,
        detailLocationCredits: detail.detailLocationCredits,
        detailConcepts: detail.detailConcepts));
  }
}
