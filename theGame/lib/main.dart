import 'package:flutter/material.dart';
import 'package:untitled/route.dart';
import 'darkTheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      routes: Routes.routes,
      initialRoute: Routes.splash,
      theme: darkTheme().themedata,
    );
  }
}