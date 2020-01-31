
import 'package:flutter/material.dart';

class CardWidge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CardWidgeState();
}

class CardWidgeState extends State<CardWidge>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
        child: Padding(padding: EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
            Container(height: 30,child:
            Stack(
              children: <Widget>[
                new Align(
                  alignment: FractionalOffset.centerLeft,
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[Text("许嵩发表了", style: TextStyle(fontSize: 14),)],),
                ),
                new Align(
                  alignment: FractionalOffset.topRight,
                  child:DecoratedBox(decoration: BoxDecoration(
                      borderRadius:   BorderRadius.circular(30.0),
                      boxShadow: [BoxShadow(color: Colors.greenAccent[200],offset: Offset(1.0,1.0),blurRadius:2.0)]),
                      child:  Padding(padding: EdgeInsets.only(left: 7,top: 7,bottom: 5,right: 5),child: Icon(Icons.assignment,color: Colors.white,size: 18,),)),
//                  ClipOval(child: Container(height: 30, width: 30, child: Icon(Icons.assignment,color: Colors.white,size: 18,),color: Colors.lightGreenAccent,),)
                )
              ],
            ),),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child:Container(
                height: 25,child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 1),child: Icon(Icons.access_time,size: 12,color: Colors.black38,),),
                  Padding(padding: EdgeInsets.only(left: 5), child:Text("2020-01-14 20:55:52",style: TextStyle(fontSize: 12,color: Colors.black38),),)
                ],
              ),
              ),
            ),
            Container(
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding:EdgeInsets.all(3),
                    child: ClipRRect(
                      child: Image.network("https://i03piccdn.sogoucdn.com/c54eb831b18dcd70",width: 32,height: 32,),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
//                  Icon(Icons.person,size: 42,),
                  Padding(padding: EdgeInsets.only(left: 5), child:
                  Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                    Container(width:  220,height: 20, child: Text("测试我我我我我我我我我我我我我我我我我你好我你你好他我一你这我",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.black54,fontSize: 12),),),
                    Container(width: 220,height: 20, child: Row(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                      Text("许嵩", style: TextStyle(fontSize: 12),),
                      Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.thumb_up, color: Colors.blueAccent,size: 16,),),
                      Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.insert_emoticon, color: Colors.blueAccent,size: 16,),),
                    ],),),
                  ],),)
                ],
              ),
            ),
          ],),
        )
    );
  }
}