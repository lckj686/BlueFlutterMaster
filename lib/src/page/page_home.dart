import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page_find.dart';
import 'page_list_server.dart';
import 'page_me.dart';
import 'page_news.dart';

/// This Widget is the main application widget.
class HomePage extends StatelessWidget {
  String _msg = "";

  HomePage({Key? key, String msg = ""}) : super(key: key) {
    _msg = msg;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(_msg),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  String _msg = "";

  MyNavigationBar(this._msg, {Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState(_msg);
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  String _msg = "0";

  static final List<Widget> _widgetOptions = <Widget>[
    TabBarPage(),
    const FindPage(title: "find"),
    const MinePage(title: "mine")
  ];

  _MyNavigationBarState(String msg) {
    _msg = msg;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("-----------$_msg");

    return Scaffold(
      body: IndexedStack(
        children: _widgetOptions,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.green),
            BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page_sharp),
              label: 'Find',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Me',
              backgroundColor: Colors.blue,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepOrangeAccent,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 2),
    );
  }
}
