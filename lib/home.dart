import 'package:flutter/material.dart';
import './bottom_navigation_widget.dart';
import './bottom_appBar_demo.dart';
import './animation_pages.dart';
import './frosted_glass_demo.dart';
import './keep_alive_demo.dart';
import './search_bar_demo.dart';
import './wrap_demo.dart';
import './expansion_tile_demo.dart';
import './expansion_panel_list_demo.dart';
import './clip_path.dart';
import './right_back_demo.dart';
import './draggable_demo.dart';

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
                MaterialPageRoute(builder: (context) => FrostedGlassDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('5 保持页面状态'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => KeepAliveDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('6 一个不简单的搜索框'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => SearchBarDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('7 流式布局 模拟添加照片效果'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => WrapDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('8 展开闭合案例'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => ExpansionTileDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('9 展开闭合列表案例'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => ExpansionPanelListDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('10 贝塞尔曲线切割'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => ClipPathDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('11 右滑返回上一页'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => RightBackDemo()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('12 拖拽控件'),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DraggableDemo()),
              );
            },
          ),
          Divider(),
        ],
      )
    );
  }
}