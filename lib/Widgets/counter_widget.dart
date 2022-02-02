import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CounterWidget extends StatelessWidget {
  String name;
  int counter;
  VoidCallback addFunc;
  VoidCallback subFunc;

  CounterWidget(
      {required this.name,
      required this.counter,
      required this.subFunc,
      required this.addFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            Text(
              "$counter",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    mini: true,
                    backgroundColor: Colors.grey[600],
                    onPressed: subFunc),
                SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  mini: true,
                  backgroundColor: Colors.grey[600],
                  onPressed: addFunc,
                ),
              ],
            )
          ],
        ));
  }
}
