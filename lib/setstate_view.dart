import 'package:flutter/material.dart';

class SetFullWidget extends StatefulWidget {
  const SetFullWidget({Key? key}) : super(key: key);

  @override
  _SetFullWidgetState createState() => _SetFullWidgetState();
}

class _SetFullWidgetState extends State<SetFullWidget> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Set State Full widget'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                Text(_value.toString()),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _value++;
                      });
                    },
                    child: Text('Increment')),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _value--;
                      });
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
