import 'package:flutter/material.dart';


// 自定义扩展状态类
class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  var currentPanelIndex = -1;
  List<int> mList;
  // 展开的状态列表，ExpandStateBean是自定义类
  List<ExpandStateBean> expandStateList;
  // 构造方法
  _ExpansionPanelListDemoState(){
    mList = new List();
    expandStateList = new List();
    // 遍历为两个list进行赋值
    for(int i=0; i<10; i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  // 修改展开与闭合的内部方法
  _setCurrentIndex(int index, isExpand){
    setState(() {
     // 遍历可展开状态列表
     expandStateList.forEach((item){
       if(item.index==index){
         // 取反
         item.isOpen = !isExpand;
       }
     });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion panel list'),
      ),
    );
  }
}