class BaseResultBean {
  String? keyword;
  int num = 0;
  List<ItemBean>? list = [];

  BaseResultBean({this.keyword, this.num = 0, this.list});

  BaseResultBean.fromJson(Map<String, dynamic> json) {
    keyword = json['keyword'];
    num = json['num'];
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list ??= [];
        list?.add(ItemBean.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['keyword'] = this.keyword;
    data['num'] = this.num;
    if (this.list != null) {
      data['list'] = this.list?.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'BaseResult{keyword: $keyword, num: $num, list: $list}';
  }
}

class ItemBean {
  String? title;
  String? time;
  String? src;
  String? category;
  String? pic;
  String? url;
  String? weburl;
  String? content;

  ItemBean({this.title, this.time, this.src, this.category, this.pic, this.url, this.weburl, this.content});

  ItemBean.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    time = json['time'];
    src = json['src'];
    category = json['category'];
    pic = json['pic'];
    url = json['url'];
    weburl = json['weburl'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['time'] = this.time;
    data['src'] = this.src;
    data['category'] = this.category;
    data['pic'] = this.pic;
    data['url'] = this.url;
    data['weburl'] = this.weburl;
    data['content'] = this.content;
    return data;
  }

  @override
  String toString() {
    return 'ItemBean{title: $title, time: $time, src: $src, category: $category, pic: $pic, url: $url, weburl: $weburl, content: $content}';
  }
}
