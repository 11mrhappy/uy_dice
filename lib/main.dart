import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1; //4 //5
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    // var leftDiceNumber = 2; //4

    return Center(
      child: Row(
        children: [
          Expanded( //2
            flex: 1, //3
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  print('diceNumber = $leftDiceNumber');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'), //1
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
                print('right button got pressed');
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'), //1
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//1 画像ファイルをローカルに持っている場合はImageウィジェットにAssetImageでパス。yamlにassets image設定することも忘れず
//  書き方2つ 上の方が楽
//2 Expandedクラスは、Imageウィジェットを真ん中に表示する？テキストは無理。画面オーバーしても収めてくれる
//3 flexは横幅に対して割合を決めるもの。今回はなくても元から1:1だから無くても変わらない。
//4 build内の変数はhot reloadに対応する？クラス内の方は再ビルドしたときに変化に対応する
//5 int型に指定しまった場合integerしか代入できない
