import 'dart:ui';

import 'package:flutter/material.dart';
import '../widget/icon_text.dart';
import '../widget/item_with_icon.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  String name = "大于";
  String userId = "xxxxx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQueryData.fromWindow(window).padding.top),
        child: const SafeArea(
          top: true,
          child: Offstage(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 40, bottom: 18),
              height: 58,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 58,
                    width: 58,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey,
                      foregroundImage: AssetImage('lib/assets/images/icon_header.jpg'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 10, bottom: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(name,
                              style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("微信号：$userId",
                              style: const TextStyle(
                                  color: Color(0xff737373), fontSize: 14, fontWeight: FontWeight.normal))
                        ]),
                  )
                ],
              ),
            ),
            Container(
              child: Row(children: [
                Container(
                  child: IconText("状态",style: TextStyle(color: Color(0xff989898)), iconDataL: Icons.add),
                  margin: EdgeInsets.only(left: 25 + 58 + 15, bottom: 22),
                  padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.white),
                )
              ]),
            ),
            Divider(color: Color(0xffededed), height: 8, thickness: 8, indent: 0, endIndent: 0),
            const ItemWithIcon(content: "收藏", imageProvider: AssetImage('lib/assets/images/icon_home_draw.png')),
            const ItemWithIcon(content: "朋友圈", imageProvider: AssetImage('lib/assets/images/icon_home_music.png')),
            const ItemWithIcon(content: "卡包", imageProvider: AssetImage('lib/assets/images/icon_home_swim.png')),
            const Divider(color: Color(0xffededed), height: 8, thickness: 8, indent: 0, endIndent: 0),
            const ItemWithIcon(
                isNeedDivider: false,
                content: "设置",
                imageProvider: AssetImage('lib/assets/images/icon_home_support.png')),
            Expanded(child: Container(color: const Color(0xffededed)), flex: 1)
          ],
        ),
      ),
    );
  }
}
