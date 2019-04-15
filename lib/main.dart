import 'package:flutter/material.dart';
import './bottom_navigation_widget.dart';

void main() {
  runApp(MaterialApp(
    title: '10个练习demo',
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
        ],
      )
    );
  }
}























