import 'package:flutter/material.dart';

class FoodShopRoute extends StatefulWidget {
  const FoodShopRoute({Key? key}) : super(key : key);

  @override
  _FoodShopState createState() => _FoodShopState();
}

class _FoodShopState extends State<FoodShopRoute> {
  int _index = 0;
  final List _GoodsSelect = [
    ["사료", 5],
    ["백반", 10],
    ["시리얼", 20],
    ["수프", 20]
  ];

  void _onPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TextButton(onPressed: _onPressed, child: Text("${_GoodsSelect[0][0]} | ${_GoodsSelect[0][1]}W")),
          TextButton(onPressed: _onPressed, child: Text("${_GoodsSelect[1][0]} | ${_GoodsSelect[1][1]}W")),
          TextButton(onPressed: _onPressed, child: Text("${_GoodsSelect[2][0]} | ${_GoodsSelect[2][1]}W")),
          TextButton(onPressed: _onPressed, child: Text("${_GoodsSelect[3][0]} | ${_GoodsSelect[3][1]}W")),
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text("뒤로가기"))
        ],
      ),
    );
  }
}