import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation.dart';

class SplashRoute extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}


class _SplashState extends State<SplashRoute> {

  Future<bool> _onBackPressed() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("종료 하시겠습니까?"),
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: InkWell(
          onTap: () {Navigator.pushReplacementNamed(context, '/navigation');},
        ),
      ),
    );
  }
}