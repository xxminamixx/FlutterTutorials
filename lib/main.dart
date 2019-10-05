import 'package:flutter/material.dart';
import 'package:flutter_app/Logger.dart';

void main() {
  // MyAppクラスを実行する
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Logger.debug(addInt(10, 20));
    Logger.debug(addString("あああ", "いいい"));
    Logger.debug(addDynamic(10, 9));
    Logger.debug(addDynamic("ジェネリクス", "で足し算"));
    
    return new MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, Flutter!'),
        ),
        body: Text(
          'Hello Flutter World!!',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
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

}

// MARK: enum: 列挙型。型は定義できない
enum ErrorType {
  TIMEOUT,
  STANDARD
}

// MARK: abstract: 抽象度の高いクラスを表す。()でインスタンス生成できない
abstract class Greeting {
  void hello(value) {
    print("Hello, $value");
  }
}

// MARK: implements: インターフェースとして採用・extends: 継承

/// Greetingを採用したクラス
class Human implements Greeting {
  void hello(value) {
    print("Goodbye, $value");
  }
}