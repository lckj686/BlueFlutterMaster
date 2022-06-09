import 'dart:ui';

import 'package:flutter/material.dart';

import 'extend.dart';

class ButtonRouter extends StatelessWidget {
  String todo;

  ButtonRouter({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextButton(
              onPressed: () {},
              child: const Text(
                "btn0",
                style: TextStyle(fontSize: 20),
              )),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              toast("ElevatedButton");
            },
            child: const Text(
              "btn1",
              style: TextStyle(fontSize: 20),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Received click');
            },
            child: const Text('Click Me'),
          ),
          MaterialButton(
            onPressed: () {},
            child: const Text("Material"),
            shape: const RoundedRectangleBorder(
              //边框颜色
              side: BorderSide(
                color: Colors.deepPurple,
                width: 1,
              ),
              //边框圆角
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
