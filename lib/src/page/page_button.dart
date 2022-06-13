import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'extend.dart';

class ButtonRouter extends StatelessWidget {
  String todo;

  ButtonRouter({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
        title: Text(
          todo,
          style: TextStyle(color: Colors.white),
        ),
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
          RawMaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            // elevation: 2.0,
            fillColor: Colors.grey,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            padding: EdgeInsets.only(right: 4.0),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.grey,
            textColor: Colors.white,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
            ),
            padding: EdgeInsets.all(15),
            shape: CircleBorder(),
          )
        ],
      ),
    );
  }
}
