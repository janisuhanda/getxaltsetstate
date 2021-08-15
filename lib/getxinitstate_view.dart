import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxIniState extends StatelessWidget {
  GetxIniState({Key? key}) : super(key: key);
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
                Obx(() =>
                    Text(Get.put<ControllerX>(ControllerX()).kodok.toString())),
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

class ControllerX extends GetxController {
  var kodok = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    kodok.value = 5;
    super.onInit();
  }
}
