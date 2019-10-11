import 'package:flutter/material.dart';
import 'Logger.dart';

/// main.dart のメインUIをこちらのクラスに切り離し
class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    Logger.debug(addInt(10, 20));
    Logger.debug(addString("あああ", "いいい"));
    Logger.debug(addDynamic(10, 9));
    Logger.debug(addDynamic("ジェネリクス", "で足し算"));

    var list = [
      "りんご",
      "ごりら",
      "らっぱ",
      "ぱんつ",
      "みつき",
      "きんぎょ"
    ];

    var widgetList = new List<Widget>();
    // widgetListにTextを詰め込む
    for (String value in list) {
      widgetList.add(textWidget(value));
    }

    list.forEach((word) => Logger.debug(widgetList));
    list.map((word) => Logger.debug(widgetList));

    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, Flutter!'),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: Column(
            children:widgetList
          )
        ),
      floatingActionButton: floatingActionButton(),
    );
  }

  /// Intの足し算関数
  int addInt(int value1, int value2) {
    return value1 + value2;
  }

  /// 文字列の連結
  String addString(String value1, String value2) {
    return value1 + value2;
  }

  /// ジェネリクスな足し算メソッド
  addDynamic(value1, value2) {
    return value1 + value2;
  }

  /// 引数で指定された文字のTextを返す
  Widget textWidget(String text, {double fontSize = 14}) {
    return Text(
        text,
        style: TextStyle(fontSize: fontSize, fontFamily: "Hiragino Sans")
    );
  }

  Widget rowWidget(List<Widget> widgets) {
    return Row(
      children: widgets
    );
  }

  Widget floatingActionButton() {
    return Builder(
      builder: (context) =>
          FloatingActionButton(
            onPressed: () {
              showSnackBar(context);
            },
            child: Icon(Icons.favorite),
            backgroundColor: Colors.green,
          )
    );
  }

  /// SnackBarを表示する
  void showSnackBar(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
        SnackBar(
            content: textWidget("ボタンが押されました")
        )
    );
  }
}