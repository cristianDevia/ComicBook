import 'package:comic_book/presentation/comics_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Comic Book',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ComicsScreen(),
  ));
}
