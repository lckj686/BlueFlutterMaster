import 'package:flutter/material.dart';

import 'page_list_server.dart';

class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listStr = ["头条", "新闻", "财经", "体育", "娱乐", "军事", "教育", "科技", "NBA", "股票", "星座", "女性", "健康", "育儿"];
    List<Widget> listChanelWidget = listStr
        .map((e) => Tab(
              text: e,
            ))
        .toList();

    List<Widget> listBody = [];
    for (int i = 0; i < listStr.length; i++) {
      listBody.add(ListMockPage());
    }

    return DefaultTabController(
      length: listChanelWidget.length, // tab个数
      child: Scaffold(
        // Tab组件必须放到Scaffold中
        appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0.5,
            title: TabBar(
              isScrollable: true,
              unselectedLabelColor: const Color(0xffb0b0b0),
              labelColor: const Color(0xff111111),
              indicatorPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
              indicatorColor: const Color(0xfffe350e),
              tabs: listChanelWidget,
            )),
        body: TabBarView(
          // 类似ViewPage
          children: listBody,
        ),
      ),
    );
  }
}
