import 'package:flutter/material.dart';
import 'package:todo_list/screen/list.dart';

void main() {
  // 最初に表示するWidget
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App', // アプリ名
      theme: ThemeData(
        primarySwatch: Colors.blue, // テーマカラー
      ),
      // リスト一覧画面を表示
      home: TodoListPage(),
    );
  }
}
