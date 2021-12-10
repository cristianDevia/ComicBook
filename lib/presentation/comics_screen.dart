import 'package:comic_book/presentation/comics_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicsScreen extends StatelessWidget {
  final ComicsController comicsController = Get.put(ComicsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Comic Book"),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                  indicatorWeight: 4.0,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Padding(
                        padding: EdgeInsets.only(
                            top: Get.height * 0.004, bottom: Get.height * 0.01),
                        child: Text("Grid",
                            style: TextStyle(color: Colors.black))),
                    Padding(
                        padding: EdgeInsets.only(
                            top: Get.height * 0.004, bottom: Get.height * 0.01),
                        child:
                            Text("List", style: TextStyle(color: Colors.black)))
                  ]),
              Flexible(
                  child: Column(
                children: <Widget>[
                  Flexible(
                      child: TabBarView(
                    children: [
                      Column(children: [
                        Expanded(
                          child: GridView.custom(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.9,
                                    crossAxisSpacing: 8.0),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            childrenDelegate: SliverChildListDelegate(
                                comicsController.comicsGrid),
                          ),
                        )
                      ]),
                      Container(color: Colors.red)
                    ],
                  ))
                ],
              ))
            ],
          ),
        ));
  }
}
