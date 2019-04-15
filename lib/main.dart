import 'package:flutter/material.dart';
import './bottom_navigation_widget.dart';
import './bottom_appBar_demo.dart';
import './animation_pages.dart';

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
          ListTile(
            title: Text('3 酷炫的动画路由'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('4 毛玻璃效果'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
          ),
          Divider(),
        ],
      )
    );
  }
}























