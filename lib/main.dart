import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxaltsetstate/getxstate_view.dart';
import 'package:getxaltsetstate/setstate_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Beranda'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => SetFullWidget());
                    },
                    child: Text('Set State')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => GetxState());
                    },
                    child: Text('Getx State')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
