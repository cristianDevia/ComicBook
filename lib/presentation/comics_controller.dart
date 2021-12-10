import 'package:comic_book/data/comic_repository.dart';
import 'package:get/get.dart';

class ComicsController extends GetxController {
  final repository = ComicRepository();
  var comics = [].obs;
  @override
  void onInit() async {
    var response = await repository.allComics();
    comics.assignAll(response);
    super.onInit();
  }
}
