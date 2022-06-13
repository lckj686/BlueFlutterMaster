### 一、概述
flutter出几年了，发展的很快。有关注但都停留在跑环境上，现在都已经支持桌面端了。 android studio 新版本，new project 第一个选项也已经是flutter project。所以想写个简单的客户端进行记录与积累，不然又是跑helloword。

按实际做android app的经验，一个最基础简单的app包括：

- ui元素：文字，按钮，图片，列表，开关，输入框
- ui布局：横竖布局，相对布局，弹簧效果
- 底部的tabbar切换内容子页
- 网络获取数据
- 图片加载网络图，圆形头像，圆角图片
- 本地存储介质：sp
- 路由界面跳转
- 弹框，选择框，Toast

其它：定位，picker，图片选择器，数据库等。
打算分步实现上面罗列的功能。因为flutter最大的意义是跨平台所以需要打包部署web版本。

### 二、使用的工具
开发接口使用：
- [https://www.binstd.com/](https://www.binstd.com/) 这里的一些免费接口。
- [https://www.fastmock.site/#/](https://www.fastmock.site/#/) 自己mock出的json放在上面当成接口访问也可当成接口访问

web部署工具：
阿里云服务器

### 三、项目地址
【github地址】:[https://github.com/lckj686/BlueFlutterMaster](https://github.com/lckj686/BlueFlutterMaster)
【web部署地址】：[http://leon.fzcw666.com/#/](http://leon.fzcw666.com/#/)

### 四、web打包问题：
可以run，部署了看不到，改用指令打包：flutter build web --web-renderer html