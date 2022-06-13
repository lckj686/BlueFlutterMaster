import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  final String todo;

  const TabBarPage({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 16, // tab个数
      child: Scaffold(
        // Tab组件必须放到Scaffold中
        appBar: AppBar(
            title: Text(todo),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24.0,
              ),
            ),
            // automaticallyImplyLeading: false,
            bottom: TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: "热点"),
                Tab(text: "新闻"),
                Tab(text: "推荐"),
                Tab(text: "同城"),
                Tab(text: "热点"),
                Tab(text: "新闻"),
                Tab(text: "推荐"),
                Tab(text: "同城"),
                Tab(text: "热点"),
                Tab(text: "新闻"),
                Tab(text: "推荐"),
                Tab(text: "同城"),
                Tab(text: "热点"),
                Tab(text: "新闻"),
                Tab(text: "推荐"),
                Tab(text: "同城"),
              ],
            )),
        body: TabBarView(
          // 类似ViewPage
          children: <Widget>[
            ListView(children: <Widget>[
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab")),
              ListTile(title: Text("这是第1个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab")),
              ListTile(title: Text("这是第2个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab")),
              ListTile(title: Text("这是第3个 tab"))
            ]),
            ListView(children: <Widget>[
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab")),
              ListTile(title: Text("这是第4个 tab"))
            ]),
          ],
        ),
      ),
    );
  }
}
