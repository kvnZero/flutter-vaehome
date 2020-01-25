import 'package:flutter/material.dart';

class PartyCardWidge extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PartyCardWidgeState();
}

class PartyCardWidgeState extends State<PartyCardWidge>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        border: new Border(bottom: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
      ),
      child: Padding(padding: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
          Container(
              height: 180,
              width: MediaQuery.of(context).size.width-30,
              child: new Image.network("https://i03piccdn.sogoucdn.com/035390e1b8fb0f1e",fit: BoxFit.fill,)
          ),
          Padding(padding: EdgeInsets.only(top: 5,bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AnimatedDefaultTextStyle(
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.body2,
                    duration: kThemeAnimationDuration,
                    curve: Curves.fastOutSlowIn,
                    child: Text("聚会标题", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                  ),
                ],
              )
          ),
          Container(height: 50,width: MediaQuery.of(context).size.width-30,
            child: Text("一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍",
              overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.black54,fontSize: 14),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Text("2020-01-29 11:00", style: TextStyle(fontSize: 12,color: Colors.black26),),
              ],),
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.message,size: 16,color: Colors.black26),
                      Padding(padding: EdgeInsets.only(left: 2),child:
                      Text("123",style: TextStyle(fontSize: 12,color: Colors.black26),),)
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up,size: 16,color: Colors.black26),
                        Padding(padding: EdgeInsets.only(left: 2),child:
                        Text("123",style: TextStyle(fontSize: 12,color: Colors.black26),),)
                      ],
                    ),)
                ],
              )
            ],
          ),
        ],),
      ),
    );
  }
}