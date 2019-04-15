import 'package:flutter/material.dart';
import './bottom_navigation_widget.dart';
import './bottom_appBar_demo.dart';

void main() {
  runApp(MaterialApp(
    title: '10个练习demo',
    theme: ThemeData(
      primarySwatch: Colors.lightBlue
    ),
    home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('demo列表'),),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('1 底部导航栏制作'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => BottomNavigationWidget()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('2 不规则底部工具栏制作'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => BottomAppBarDemo()),
              );
            },
          ),
          Divider(),
        ],
      )
    );
  }
}























