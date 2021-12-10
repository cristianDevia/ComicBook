import 'dart:convert';

import 'package:comic_book/domain/comic.dart';
import 'package:comic_book/domain/detail.dart';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ComicRepository {
  Future allComics() async {
    var response = await http.get(
        Uri.parse(
            "https://comicvine.gamespot.com/api/issues/?api_key=65f2e0ba762e2f9b435d80998c9018eea86e28d8&format=json"),
        headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods":
              "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List result = data["results"].map((json) {
        return Comic.fromMap(json);
      }).toList();
      return result;
    } else {
      return null;
    }
  }

  Future detailComics(String apiDetail) async {
    var response = await http.get(
        Uri.parse(
            "$apiDetail?api_key=65f2e0ba762e2f9b435d80998c9018eea86e28d8&format=json"),
        headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods":
              "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      Map result = data["results"];
      return Detail.fromMap(result);
    } else {
      return null;
    }
  }
}
