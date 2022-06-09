import 'package:flutter/material.dart';
import 'package:untitled/shopDir/food_shop.dart';
import 'route.dart';

class ShopRoute extends StatefulWidget {
  const ShopRoute({Key? key}) : super(key : key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<ShopRoute> {
  int _index = 0;
  final List _GoodsSelect = [
    ["밥", Routes.foodShop],
    ["옷", Routes.clothShop],
    ["목욕용품", Routes.soapShop],
    ["장난감", Routes.toyShop]
  ];

  void _onPressed() {
    Navigator.pushNamed(context, _GoodsSelect[_index][1]);
    print("${_GoodsSelect[_index][1]}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          TextButton(onPressed: (){_index=0; _onPressed();}, child: Text("밥")),
          TextButton(onPressed: (){_index=1; _onPressed();}, child: Text("옷")),
          TextButton(onPressed: (){_index=2; _onPressed();}, child: Text("목욕용품")),
          TextButton(onPressed: (){_index=3; _onPressed();}, child: Text("장난감")),
        ],
      ),
    );
  }
}