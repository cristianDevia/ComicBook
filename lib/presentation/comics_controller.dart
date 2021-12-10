import 'package:comic_book/data/comic_repository.dart';
import 'package:comic_book/presentation/item_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

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
      var item = ItemGrid(
          comicDate: comics[i].comicDate,
          comicImage: comics[i].comicImage,
          comicName: comics[i].comicName,
          comicIssue: comics[i].comicIssue);
      comicsGrid.add(item);
    }
  }
}
