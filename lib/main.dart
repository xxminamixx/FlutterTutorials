import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';

void main() {
  // MyAppクラスを実行する
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {



    return new MaterialApp(
      title: 'Flutter Demo',
      home: HomeWidget()
    );
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