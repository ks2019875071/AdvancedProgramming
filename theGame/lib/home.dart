import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key : key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeRoute> {
  int _energy = 10;
  int _maxEnergy = 10;
  int _money = 100;
  int _maxMoney = 1000000;
  String _talk = "...";
  final List<String> _toolTip = <String>[
    "Hungry", "Sleepy", "Hug Plz", "Hi"
  ];
  String _state = "normal";
  final List _statusInfo = [
    "good", "normal", "bad"
  ];

  String _randomTalk() {
    Random _random = Random();
    int randNum = _random.nextInt(_toolTip.length);
    return _toolTip[randNum];
  }

  String _randomStatus() {
    Random _random = Random();
    int randNum = _random.nextInt(_statusInfo.length);
    return _statusInfo[randNum];
  }

  void _onPressed() {
    _talk = _randomTalk();
    _state = _randomStatus();
    setState(() {
      _talk;
      _state;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  child:
                    Text("Energy ${_energy}/${_maxEnergy}",
                      style: TextStyle(fontSize: 15),
                    ),
                    margin: EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: HSLColor.fromAHSL(1, 176, 0.5, 0.9).toColor(),
                        border: Border.all(
                            width: 4.0,
                            color: HSLColor.fromAHSL(1, 38, 0.65, 0.60).toColor()
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
                Container(
                    child:
                    Text("money ${_money}/${_maxMoney}",
                      style: TextStyle(fontSize: 15),
                    ),
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: HSLColor.fromAHSL(1, 176, 0.5, 0.9).toColor(),
                          border: Border.all(
                              width: 4.0,
                              color: HSLColor.fromAHSL(1, 38, 0.65, 0.60).toColor()
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                      )
                ),
                  Container(
                      child: Icon(Icons.tag_faces, size: 100,)
                  )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  padding: EdgeInsets.all(5.0),
                  child: Text("상태: ${_state}", style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.all(10.0),
                  width: 150, height: 100,
                  decoration: BoxDecoration(
                    color: HSLColor.fromAHSL(1, 176, 0.5, 0.9).toColor(),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text("${_talk}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.indigo
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                IconButton(
                  onPressed:()=> _onPressed(),
                  icon: Image.asset('C:/Users/seyeu/untitled/assets/image/sprite1.png'),
                  iconSize: 200,
                  color: HSLColor.fromAHSL(1, 38, 0.65, 0.60).toColor(),
                )
              ],
            ),
          ]
      )
    );
  }
}