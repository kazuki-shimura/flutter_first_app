import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えてください！";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("初めてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                _textHeader,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 25.0),
              controller: _textEditingController, //TODO 入力した文字を管理する
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => _onClick(), //TODO ボタンのクリック処理
                child: Text("押してね", style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      // 文字
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは！$inputTextさん";
      // 画像
      _imageWidget = Image.asset("assets/images/b0800.png");
    });
  }
}
