import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostInfo{
  String type;
  String username;
  String avater;
  String time;
  String content;
  List img;
  int good;
  int message;

  PostInfo(String type, String username, String avater, String time, String content, List img , int good, int message){
    this.type = type;
    this.username = username;
    this.avater = avater;
    this.time = time;
    this.content = content;
    this.img = img;
    this.good = good;
    this.message = message;
  }
}

class Post extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PostState();
  }
}

class PostState extends State<Post>{


//  var postinfo = {'type':'text','username': '小管家', 'avater':'', 'time':'01月25日 00:00','content':'新新1年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐新年快乐年快乐','img':"'https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e','https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e','https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e','https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e'",'typeName':'生活圈', 'message':100, 'good':100};

//  PostInfo postInfo = new PostInfo('text', '小管家', '', '01月25日 00:00', '新年快乐', ['http://img.zcool.cn/community/0179f05543019a0000019ae90588fe.jpg@2o.jpg','http://pic30.nipic.com/20130630/12251844_161816529176_2.jpg','http://pic30.nipic.com/20130630/12251844_161816529176_2.jpg','http://pic30.nipic.com/20130630/12251844_161816529176_2.jpg','http://pic30.nipic.com/20130630/12251844_161816529176_2.jpg'], 300, 1);
  PostInfo postInfo = new PostInfo('text', '小管家', '', '01月25日 00:00','', ['http://img.zcool.cn/community/0179f05543019a0000019ae90588fe.jpg@2o.jpg'], 300, 1);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget body;
    switch(postInfo.type){
      case 'text':{
        List<Widget> child =[];
        if (postInfo.content != null) {
          if(postInfo.content.isNotEmpty){
            child.add(Container(
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width-20,
              child: Text(postInfo.content,textAlign: TextAlign.left,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
            ));
          }
        }
        if(postInfo.img.length > 0){
          child.add(Container(
            width: MediaQuery.of(context).size.width-20,
            padding: EdgeInsets.only(bottom: 10),
            child: (postInfo.img.length == 1) ? Container(height: 200,alignment: Alignment.topLeft,child: Image.network(postInfo.img[0],),) : GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (postInfo.img.length == 2 || postInfo.img.length == 4) ? 2 : 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Image.network(
                    postInfo.img[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: postInfo.img.length,
            ),
          ));
        }
        body = Column(
          children: child
        );
      }
      break;
      case 'img':{
        body = Column(
          children: <Widget>[
            Expanded(child: Text("title")),
            Expanded(child: new Image.network("https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e",fit: BoxFit.fill,))
          ],
        );
      }
      break;
    }  

    return Column(
      children: <Widget>[
        Container(height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      width: 40,
                      child: Padding(padding: EdgeInsets.all(0),child: Image.network('https://i03piccdn.sogoucdn.com/c54eb831b18dcd70',fit: BoxFit.fill,),)
                  ),
                  Padding(padding: EdgeInsets.only(left: 5),
                    child: Column(
                      children: <Widget>[
                        Container(width: 200,child: Text("小管家",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),),
                        Container(margin: EdgeInsets.only(top: 1),width: 200,child: Text("01月25 00:00", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 18,
                color: Colors.black26,
                onPressed: (){},
              )
            ],
          ),),
        Container(padding: EdgeInsets.only(top:10),child: body,),
//        body,
        Container(
          decoration: new BoxDecoration(
            border: new Border(top: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
          ),
          height: 35,
          child: Padding(padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 42,
                  child: FlatButton(child: Text('生活圈',),textTheme: ButtonTextTheme.primary,padding: EdgeInsets.zero,onPressed: (){},),
                ),
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.message,size: 18,color: Colors.black26),
                        Padding(padding: EdgeInsets.only(left: 5),child:
                        Text("123",style: TextStyle(fontSize: 12,color: Colors.black26),),)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up,size: 18,color: Colors.black26),
                          Padding(padding: EdgeInsets.only(left: 5),child:
                          Text("123",style: TextStyle(fontSize: 12,color: Colors.black26),),)
                        ],
                      ),)
                  ],
                )
              ],
            ),),
        )
      ],
    );
  }
}