import 'dart:io';
import 'dart:ui';

import 'package:dio/adapter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dio/dio.dart';
import '../bean/base_result_bean.dart';

class ListMockPage extends StatefulWidget {
  ListMockPage({Key? key}) : super(key: key);

  @override
  _ListMockPageState createState() => _ListMockPageState();
}

class _ListMockPageState extends State<ListMockPage> {
  List<ItemBean> list = [];
  List<Widget> widgets = [];
  Dio dio = Dio();

  _ListMockPageState() {
    check();
  }

  void getHttp() async {
    try {
      Response response =
          await Dio().get('https://www.fastmock.site/mock/237b1704cfa5e15d3b653973bc1e3341/test/search/list');
      print("json=$response");
      print("json2=${response.data['result'].runtimeType}");

      BaseResultBean result = BaseResultBean.fromJson(response.data['result']);
      print("json3=${result}");
      list = result.list ?? [];
      setState(() {
        widgets.clear();
        for (int i = 0; i < list.length; i++) {
          widgets.add(getRow(i, list[i]));
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void check() {
    if (dio.httpClientAdapter is DefaultHttpClientAdapter) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          return true;
        };
      };
    }
  }

  @override
  void initState() {
    super.initState();
    getHttp();
  }

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
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position, list[position]);
        },
      ),
    );
  }

  Widget getRow(int i, ItemBean bean) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print('row $i');
          Fluttertoast.showToast(
              msg: "onTap $i",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        });
      },
      child: Container(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 13),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.only(right: 15, bottom: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child: Text('${bean.title}',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(color: Color(0xff1e1e1e), fontSize: 17)),
                                flex: 1),
                            Expanded(
                                child: Text('${bean.src}  ${bean.time}',
                                    style: TextStyle(color: Color(0xff989898), fontSize: 10)),
                                flex: 0),
                          ],
                        ),
                      ),
                      flex: 1),
                  Expanded(
                      child: ClipRRect(
                        //是ClipRRect，不是ClipRect
                        borderRadius: BorderRadius.circular(5),
                        child: FadeInImage.assetNetwork(
                          placeholder: "lib/assets/images/icon_space.png",
                          image: bean.pic ?? "",
                          width: 110,
                          height: 74,
                          fit: BoxFit.cover,
                        ),
                      ),
                      flex: 0),
                ],
              ),
              const Expanded(
                  child: Divider(
                    color: Color(0xffefefef),
                    height: 5,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  flex: 0)
            ],
          )),
    );
  }
}
