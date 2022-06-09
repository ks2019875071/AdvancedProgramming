import 'package:flutter/material.dart';


class HomeRoute extends StatefulWidget {
  const HomeRoute({Key? key}) : super(key : key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}