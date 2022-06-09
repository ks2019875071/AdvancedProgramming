import 'package:flutter/material.dart';
import '../route.dart';

class ClothShopRoute extends StatefulWidget {
  const ClothShopRoute({Key? key}) : super(key : key);

  @override
  _ClothShopState createState() => _ClothShopState();
}

class _ClothShopState extends State<ClothShopRoute> {
  int _index = 0;
  final List _GoodsSelect = [
    ["줄무늬 티셔츠", 100],
    ["리본", 120],
    ["모자", 200],
    ["왕관", 400]
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