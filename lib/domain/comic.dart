//import 'package:flutter/material.dart';

class Comic {
  String comicImage;
  String comicDate;
  String comicName;
  String comicIssue;
  String apiDetailUrl;

  Comic(
      {this.comicImage = "",
      this.comicDate = "",
      this.comicName = "",
      this.comicIssue = "",
      this.apiDetailUrl = ""});

  factory Comic.fromMap(Map map) {
    return Comic(
        comicImage: map['image']['original_url'],
        comicDate: map['date_added'],
        comicName: map['name'] == null ? "" : map['name'],
        comicIssue: map['issue_number'],
        apiDetailUrl: map['api_detail_url']);
  }
}
