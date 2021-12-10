import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Comic Book"),
        ),
        body: Obx(() => DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(tabs: [Text("List"), Text("Grid")]),
                  Flexible(
                      child: Column(
                    children: <Widget>[
                      Flexible(
                          child: TabBarView(
                        children: [Container(), Container()],
                      ))
                    ],
                  ))
                ],
              ),
            )));
  }
}
