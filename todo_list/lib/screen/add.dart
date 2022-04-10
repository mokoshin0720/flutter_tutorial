import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  // 入力されたテキストを保存する変数
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 入力されたテキストを表示
            Text(_text, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            // テキストを入力するフィールド
            TextField(
              // 入力されたテキストの値がvalueに入り、変更があればsetStateで更新をする
              onChanged: (String value) {
                setState(() {
                  _text = value;
                });
              },
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // popで1つ前の画面に戻り、引数に_textをもたせることで値を受け渡す
                  Navigator.of(context).pop(_text);
                },
                child: Text('リスト追加', style: TextStyle(color: Colors.blue)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // キャンセル時は値の受け渡しをしないため、引数はなし
                  Navigator.of(context).pop();
                },
                child: Text('キャンセル'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
