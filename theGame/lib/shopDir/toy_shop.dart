import 'package:flutter/material.dart';

class ToyShopRoute extends StatefulWidget {
  const ToyShopRoute({Key? key}) : super(key : key);

  @override
  _ToyShopState createState() => _ToyShopState();
}

class _ToyShopState extends State<ToyShopRoute> {
  int _index = 0;
  final List _GoodsSelect = [
    ["개껌", 15],
    ["터그", 25],
    ["쥐 인형", 40],
    ["전자동 장난감", 60]
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