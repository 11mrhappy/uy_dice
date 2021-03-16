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

class DicePage extends StatelessWidget {
  // var leftDiceNumber = 2; //4

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2; //4

    return Center(
      child: Row(
        children: [
          Expanded( //2
            flex: 1, //3
            child: FlatButton(
              onPressed: (){
                print('left button got pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ), //1
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                print('right button got pressed');
              },
              child: Image(
                image: AssetImage('images/dice1.png'), //1
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
