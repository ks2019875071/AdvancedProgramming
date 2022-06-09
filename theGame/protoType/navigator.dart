import 'package:flutter/material.dart';
import 'home.dart';
import 'game.dart';
import 'shop.dart';
import 'setting.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key : key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget> [
    HomeRoute(), GameRoute(), ShopRoute(), SettingRoute()
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  Future<bool> _onBackPressed() async {
    return await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
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
          )
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          appBar: AppBar(title: Text('GFG'),),
          bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'game'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting')
          ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: _onTapped,
          ),
        )
    );
  }
}