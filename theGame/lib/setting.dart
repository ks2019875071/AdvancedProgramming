import 'package:flutter/material.dart';

class SettingRoute extends StatefulWidget {
  const SettingRoute({Key? key}) : super(key : key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<SettingRoute> {
  final List _info = ['허 세연 (Heo Seyeon)', 'KyungSung', 'Software', 2019875071];

  void _showInfo() {
    showDialog(context: context, builder: (context) =>
        AlertDialog(
          title: Text('개발자 정보'),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image(image: AssetImage('20190307_HEO_pic.jpg')),
              //Image(image: AssetImage('../assets/image/20190307_HEO_pic.jpg')),
              Image(image: AssetImage('C:/Users/seyeu/untitled/assets/image/20190307_HEO_pic.jpg'), width: 150, height: 200,fit: BoxFit.fill),
              Text('이름: ${_info[0]}'),
              Text('소속: ${_info[1]} - ${_info[2]} ${_info[3]}학번'),
              Text('Thank you for playing the game')
            ],
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                child: Text("닫기", style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
                onPressed: () => Navigator.pop(context)
              )
            )
          ],
        ),
    );
  }

  void _showSetting() {
    showDialog(context: context, builder: (context) =>
        AlertDialog(
          title: Text('환경 설정'),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text("배경음")
                ]
              ),
              Row(
                children: [
                  Text("알림")
                ]
              ),Row(
              )
            ],
          ),
          actions: <Widget>[
            Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text("확인", style: TextStyle(fontSize: 25), textAlign: TextAlign.center)),
                      TextButton(
                          onPressed: (){Navigator.pop(context);},
                          child: Text("취소", style: TextStyle(fontSize: 25), textAlign: TextAlign.center))
                    ]
                )
            )
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                children: [
                  IconButton(
                    onPressed: _showInfo,
                    icon: Icon(Icons.picture_in_picture), iconSize: 100
                  ),
                  IconButton(
                      onPressed: _showSetting,
                      icon: Icon(Icons.settings), iconSize: 100
                  )
                ]
            )
          ]
      )
    );
  }
}