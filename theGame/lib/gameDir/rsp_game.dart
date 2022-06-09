import 'package:flutter/material.dart';
import 'dart:math';
import '../route.dart';


class RSPGameRoute extends StatefulWidget {
  const RSPGameRoute({Key? key}) : super(key : key);

  @override
  _RSPGameState createState() => _RSPGameState();
}

class _RSPGameState extends State<RSPGameRoute> {
  int _index = 0;
  String compChoice = '';
  String userChoice = '';
  String message = '';
  int _point = 0;
  int _count = 3;
  int _totalCount=3;
  final List <String> _choices = ['rock', 'scissors','paper'];
  final List <String> _result = ["승리!", "무승부", "패배"];

  void _compPressed() {
    Random random = Random();
    int randNum = random.nextInt(3);
    compChoice = _choices[randNum];
  }

  winner(compC, userC) {
    var rspChoices = {
      'rock': {'scissors': 1.0, 'rock': 0.5, 'paper': 0.0},
      'scissors': {'paper': 1.0, 'scissors': 0.5, 'rock': 0.0},
      'paper': {'rock': 1.0, 'paper': 0.5, 'scissors': 0.0}
    };

    return rspChoices[userC]?[compC];
  }

  updateScore(score) {
    if (score == 1.0) {
      _showResult(0);
      _point += 3;
    }
    else if (score == 0.5) {
      _showResult(1);
      _point += 1;
    }
    else {
      _showResult(2);
      _point += 0;
    }
    print("total = ${_point}");
  }

  void _onPressed() {
    print("onPressed");
    _compPressed();
    userChoice = _choices[_index];
    double _score = winner(compChoice, userChoice);
    updateScore(_score);
    setState(() {
      _point;
      _count;
    });
  }


  Future<bool> _onBackPressed() async {
    return await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text("게임을 중단 하시겠습니까?"),
            actions: <Widget>[
              TextButton(
                child: Text("네"),
                onPressed: () => Navigator.pop(context, true),
              ),
              TextButton(
                child: Text("아니오"),
                onPressed: () => Navigator.pop(context, false),
              ),
            ],
          ),
    ) ??
        false;
  }

  void _showResult(index) {
    String _conText = "";
    String _btnText = "";
    _conText = _result[index];
    if (_count <= 1) {
      _btnText = "게임 완료";
    }
    else {
      _btnText = "다시 하기(${_count}/${_totalCount})";
    }
    print("${_conText}");
    showDialog(barrierDismissible: false,
      context: context,
      builder: (context) =>
        AlertDialog(
          title: Text("결과"),
          content: Column(
            children: [
              Text(_conText.toString())
            ],
          ),
          actions: <Widget>[
            Center(
                child: TextButton(
                    child: Text(_btnText.toString(), style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
                    onPressed: () {
                      _count--;
                      if (_count<=0) {
                        Navigator.popUntil(context,  ModalRoute.withName(Routes.navigation));
                      }
                      else {
                        Navigator.pop(context);
                      }
                    }
                )
            )
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold (
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Icon(Icons.question_mark, size: 180, color: Colors.redAccent),
                    ), //상대 선택
                    Container(
                      child: RichText(
                          text: TextSpan(text: _point.toString(),
                          style: TextStyle(fontSize: 25))
                      ),
                      padding: EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4.0,
                              color: HSLColor.fromAHSL(1, 217, 0, 0.45).toColor()
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                    )
                  ],
                ),
                Container(

              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget> [
                        IconButton(
                            onPressed: () {
                              _index = 0;
                              _onPressed();
                              },
                            icon: Icon(Icons.cookie_rounded), iconSize: 100
                        ),
                        IconButton(
                            onPressed: () {
                              _index = 1;
                              _onPressed();
                              },
                            icon: Icon(Icons.cut_sharp), iconSize: 100
                        ),
                        IconButton(
                            onPressed: () {
                              _index = 2;
                              _onPressed();
                              },
                            icon: Icon(Icons.back_hand_sharp), iconSize: 100
                        ),
                      ]
                  )
              )
              ],
            )
        )
    );
  }
}