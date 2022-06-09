import 'package:flutter/material.dart';
import 'route.dart';

class GameRoute extends StatefulWidget {
  const GameRoute({Key? key}) : super(key : key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<GameRoute> {
  int _index = 0;
  final List _GameDesc = [
    ['가위바위보', '제목 그대로 입니다.', 10, Routes.rspGame],
    ['달리기', '장애물을 피하며 달리세요. 터치하면 점프 합니다.', 10],
    ['카드', '카드를 뒤집어 같은 그림을 맞추세요', 20]
  ];

  void _readyGame() {
    showDialog(context: context, builder: (context) =>
        AlertDialog(
          title: Text(_GameDesc[_index][0].toString()),
          content: Text(_GameDesc[_index][1].toString()),
          actions: <Widget>[
            TextButton(
              child: Text("시작"),
              onPressed: () => Navigator.pushNamed(context, _GameDesc[_index][3]),
            ),
            TextButton(
              child: Text("취소"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  _index = 0;
                  _readyGame();
                },
                icon: Icon(Icons.play_circle),
                iconSize: 100.0,
                color: Colors.lightGreen,
              ),
              IconButton(
                onPressed: () {
                  _index = 1;
                  _readyGame();
                },
                icon: Icon(Icons.play_circle),
                iconSize: 100.0,
                color: Colors.redAccent,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _index = 2;
                      _readyGame();
                    },
                    icon: Icon(Icons.play_circle),
                    iconSize: 100.0,
                    color: Colors.orangeAccent,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}