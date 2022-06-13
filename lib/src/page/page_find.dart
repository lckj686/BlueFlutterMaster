import 'dart:ui';
import 'package:LeonFlutterMaster/src/page/page_news_detail.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'extend.dart';
import 'page_button.dart';
import 'page_tabbar.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  var list = ["Button", "TabBarView"];

  String _getStr(int index) {
    if (index < list.length) {
      return "例: ${list[index]}";
    }
    return "例: $index";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
        child: const SafeArea(top: true, child: Offstage()),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: GridView.builder(

            ///子Item排列规则
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //横轴元素个数
              crossAxisCount: 3,
              //纵轴间距
              mainAxisSpacing: 10.0,
              //横轴间距
              crossAxisSpacing: 10.0,
              //子组件宽高长度比例
              childAspectRatio: 1.4,
            ),
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    print('row $index');

                    switch (index) {
                      case 0:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ButtonRouter(todo: _getStr(index))),
                          );
                        }
                        break;
                      case 1:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TabBarPage(todo: _getStr(index))),
                          );
                        }
                        break;

                      default:
                        toast("还未添加");
                        break;
                    }
                  },
                  child: Card(
                    color: Color(0xFF8cccf4),
                    child: Center(
                      child: Text(
                        _getStr(index),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ));
            }),
      )),
    );
  }
}
