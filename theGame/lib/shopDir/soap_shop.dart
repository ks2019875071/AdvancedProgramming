import 'package:flutter/material.dart';

class SoapShopRoute extends StatefulWidget {
  const SoapShopRoute({Key? key}) : super(key : key);

  @override
  _SoapShopState createState() => _SoapShopState();
}

class _SoapShopState extends State<SoapShopRoute> {
  int _index = 0;
  final List _GoodsSelect = [
    ["비누", 10],
    ["샴푸", 20],
    ["머드팩", 40],
    ["과일팩", 50]
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