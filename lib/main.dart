import 'package:comic_book/presentation/comics_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comic Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ComicsScreen(),
    );
  }
}
