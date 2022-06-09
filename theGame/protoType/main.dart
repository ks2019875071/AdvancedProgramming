import 'package:flutter/material.dart';
import 'navigation.dart';
import 'splash.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        // "/" Route로 이동하면, FirstScreen 위젯을 생성합니다.
        '/': (context) => SplashRoute(),
        // "/second" route로 이동하면, SecondScreen 위젯을 생성합니다.
        '/navigation': (context) => Navigation(),
      },
    );
  }
}