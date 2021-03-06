import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxState extends StatelessWidget {
  GetxState({Key? key}) : super(key: key);
  var _value = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('getx State'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Obx(() => Text("$_value")),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      _value++;
                    },
                    child: Text('Increment')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      _value--;
                    },
                    child: Text('Decrement')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
