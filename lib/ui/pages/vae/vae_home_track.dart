import 'dart:async';
import 'dart:convert';

import 'package:flutter_vaehome/model/news.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/MySwiper.dart';
import 'package:flutter_vaehome/ui/widget/NewsListWidget.dart';

class VaeTrackScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeTrackScreenState();
  }
}

class VaeTrackScreenState extends State<VaeTrackScreen>{
  var bannerUrl;
  Map<int,List> news = {
    1:[],
    2:[],
    3:[],
    4:[],
    5:[],
  };
  int page = 1;
  int selectIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBanner();
    getNews();
  }

  Future getNews({int index=1,int page=1,int size=10}) async{
    //这里加载新闻列表信息
    Future<String> loadString = DefaultAssetBundle.of(context).loadString("data/News.json");
    loadString.then((String value){
      setState(() {
        Map dataMap = json.decode(value);
        if(news[index].length==0){
          news[index] = dataMap['result'];
        }
      });
    });
  }

  Future getBanner() async{
    setState(() {
      bannerUrl = "http://5b0988e595225.cdn.sohucs.com/images/20200103/0eddf8d53c1e4262aef9952f3c8bbfc3.jpeg";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    if(news[selectIndex]==null){
      return Center(
        // CircularProgressIndicator是一个圆形的Loading进度条
        child: CircularProgressIndicator(),
      );
    }

    return  RefreshIndicator(
          child:new ListView(
            children: <Widget>[
              pageCover(),
              showMoreInfo(),
              SwiperWidget(),
              NewsButtom(),
              HomeNewsList(),
            ],
          ),
          onRefresh: _onRefresh);
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      news = {
        1:[],
        2:[],
        3:[],
        4:[],
        5:[],
      };
      getBanner();
      getNews(index:selectIndex);
    });
  }

  Widget pageCover(){
    return Container(
      height: 210,
      child: new Image.network(bannerUrl, fit: BoxFit.fill,),
    );
  }

  Widget showMoreInfo(){
    return Container(
      height: 35,
      color: Color(0xFFf0f0f0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Align(
              alignment: FractionalOffset.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.date_range, color: Colors.lightBlueAccent,size: 16,),
                    Text("许嵩来了", style: TextStyle(fontSize: 14),),
                  ],
                ),)
          ),
          new Align(
              alignment: FractionalOffset.topRight,
              child:Row(
                children: <Widget>[
                  FlatButton(
                    highlightColor: Color(0xFFf0f0f0),
                    padding: EdgeInsets.all(0),
                    splashColor: Color(0xFFf0f0f0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: _onRefresh,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('更多',style: TextStyle(fontSize: 14,color: Colors.black38)),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  )
//                          Text('更多', style: TextStyle(fontSize: 14,color: Colors.black38)),
                ],
              )
          ),
        ],
      ),
    );
  }

  Widget NewsButtom (){
    List newTabs = ['全部', '新闻', '专访', '图集', '视频'];
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
    return CupertinoNavigationBar(
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
          setState(() {
            selectIndex = index;
            getNews(index: index);
          });
        },
      ),
    );
  }

  Widget HomeNewsList(){
    if(news[selectIndex].length==0){
      return Center(
        // 如果里面没有数据则现实加载进度
        child: Padding(padding: EdgeInsets.only(top: 30),child: CircularProgressIndicator(),),
      );
    }
    List<NewsWidget> _list =[];
    news[selectIndex].forEach((value){
      _list.add(NewsWidget(value));
    });
    return Column(
      children: _list.map((e)=>e).toList(),
    );
  }
}