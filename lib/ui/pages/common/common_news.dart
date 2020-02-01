import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_vaehome/model/news_detail.dart';
import 'package:flutter_vaehome/ui/widget/reviewWidget.dart';

class CommonNewsScreen extends StatefulWidget{
  int newId;
  CommonNewsScreen(int newId){
    this.newId = newId;
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommonNewsScreenState(newId);
  }
}

class CommonNewsScreenState extends State<CommonNewsScreen>{
  NewsDetail news;

  CommonNewsScreenState(int newId){
    var loadString = rootBundle.loadString('data/NewsDetail.json');
    loadString.then((String value){
      setState(() {
        Map dataMap = json.decode(value);
        news = new NewsDetail.fromJson(dataMap['result']['news']);
      });
    });
    //初始化json这里
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(news==null){
      return Center(
        // CircularProgressIndicator是一个圆形的Loading进度条
        child: CircularProgressIndicator(),
      );
    }
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text('官方动态',style: TextStyle(fontWeight: FontWeight.w400),),
        centerTitle: false,
    ),
    body: new RefreshIndicator(
      child: ListView(
        children: <Widget>[
          newsBody(),
          hotReview(),
          allReview()
        ],
      ),
    onRefresh: _onRefresh)
    );
  }
  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      print("刷新页面");
    });
  }



  Widget newsBody(){
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:15,left: 10,right: 10),
            width: MediaQuery.of(context).size.width,
            child: Text(news.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),),
          ),
          Container(
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            width: MediaQuery.of(context).size.width,
            child: Text(news.pushTimeDesc, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black38),),
          ),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Html(data: news.content,padding: EdgeInsets.zero,),
          ),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CustomPaint(
                    painter:_LinePaint(),
                    child: Center(child: Text("分享到",style: TextStyle(fontSize: 14,color: Colors.black26),),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.face),
                        Text("QQ")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.face),
                        Text("QQ空间")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.face),
                        Text("微博")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.face),
                        Text("微信")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.face),
                        Text("朋友圈")
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget hotReview(){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Row(children: <Widget>[
              Icon(Icons.whatshot,size: 14,color: Colors.redAccent,),
              Padding(padding: EdgeInsets.only(left: 5),child: Text("热门评论",style: TextStyle(fontSize: 14,color: Colors.redAccent),),)
            ],),
          ),
          Review()
        ],
      )
    );
  }

  Widget allReview(){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 10),
            child: Row(children: <Widget>[
              Text("全部评论",style: TextStyle(fontSize: 14,color: Colors.black),)
            ],),
          ),
          Review()
        ],
      )
  );
  }
}


class _LinePaint extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.black26
    ..strokeWidth = 0.5
    ..style = PaintingStyle.stroke
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double mida = 10;
    canvas.drawLine(Offset(-100,mida), Offset(170,mida), _paint);
    canvas.drawLine(Offset(220,mida), Offset(450,mida), _paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}