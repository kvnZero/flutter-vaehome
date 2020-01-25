import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/NewsListWidget.dart';


class HomeNews extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeNewsState();
  }
}

class HomeNewsState extends State<HomeNews> with SingleTickerProviderStateMixin{

  int selectIndex = 1;
  TabController _tabController;
//  ScrollController _scrollController;
  List newTabs = ['全部', '新闻', '专访', '图集', '视频'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this)..addListener((){
      if(_tabController.index.toDouble() == _tabController.animation.value){
        switch(_tabController.index){
          case 0:
            setState(() {
              selectIndex = 1;
            });
            break;
          case 1:
            setState(() {
              selectIndex = 2;
            });
            break;
          case 2:
            setState(() {
              selectIndex = 3;
            });
            break;
          case 3:
            setState(() {
              selectIndex = 4;
            });
            break;
          case 4:
            setState(() {
              selectIndex = 5;
            });
            break;
        }
      }
    });
//    _scrollController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
//    _scrollController.dispose();
//    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    TextStyle selectFontStyle = new TextStyle(
      color: Colors.lightBlue,
      fontWeight: FontWeight.normal,
      fontSize: 16
    );

    TextStyle unSelectFontStyle = new TextStyle(
      color: Colors.black26,
      fontWeight: FontWeight.normal,
      fontSize: 16,
    );

    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: new CupertinoNavigationBar(
        actionsForegroundColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        border: null,
        middle: new CupertinoSegmentedControl<int>(
          children: {
            1: Padding(padding:EdgeInsets.only(left: 18,right: 18),
              child:Text(newTabs[0],style: selectIndex == 1 ? selectFontStyle : unSelectFontStyle),),
            2: Padding(padding:EdgeInsets.only(left: 18,right: 18),
              child:Text(newTabs[1],style: selectIndex == 2 ? selectFontStyle : unSelectFontStyle),),
            3: Padding(padding:EdgeInsets.only(left: 18,right: 18),
              child:Text(newTabs[2],style: selectIndex == 3 ? selectFontStyle : unSelectFontStyle),),
            4: Padding(padding:EdgeInsets.only(left: 18,right: 18),
              child:Text(newTabs[3],style: selectIndex == 4 ? selectFontStyle : unSelectFontStyle),),
            5: Padding(padding:EdgeInsets.only(left: 18,right: 18),
              child:Text(newTabs[4],style: selectIndex == 5 ? selectFontStyle : unSelectFontStyle),),
          },
          borderColor: Colors.white,
          pressedColor: Colors.white,
          onValueChanged: (index){
            print("chick button");
            setState(() {
              selectIndex = index;
              _tabController.animateTo(index-1);
            });
          },
        ),
      ),
      child: News(),
//        child: ListView.builder(
//            itemCount: 5,
//            itemBuilder: (content, i){
//              return new News();
//            })
    );
  }
}