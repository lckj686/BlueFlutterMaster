import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:share_plus/share_plus.dart';

class NewsDetailPage extends StatefulWidget {
  final String url;

  const NewsDetailPage(this.url, {Key? key}) : super(key: key);

  @override
  State<NewsDetailPage> createState() => _PageState(url);
}

class _PageState extends State<NewsDetailPage> {
  final String url;

  _PageState(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff333333),
              size: 24.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Color(0xff333333),
                size: 24.0,
              ),
              tooltip: 'menu',
              onPressed: (){
                Share.share(url);
              },
            ),
          ],
        ),
        body: Center(
            child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blueGrey,
              child: HtmlWidget(
                '<iframe src=$url></iframe>',
                webView: true,
              ),
            ),
          ],
        )));
  }
}
// SingleChildScrollView
// Icon(Icons.arrow_back_ios),
