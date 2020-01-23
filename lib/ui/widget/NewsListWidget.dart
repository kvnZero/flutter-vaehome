import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsState();
  }
}

class NewsState extends State<News>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        border: new Border(top: BorderSide(width: 1,color: Colors.black12, style: BorderStyle.solid)),
      ),
      height: 175,
      child: Padding(padding: EdgeInsets.only(top: 20,bottom: 5,left: 10,right: 10),
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network('https://i03piccdn.sogoucdn.com/c54eb831b18dcd70',fit: BoxFit.fill,),
                  ),
                  Container(
                    height: 100,
                    child: Padding(padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: <Widget>[
                        Container(height: 30,width: MediaQuery.of(context).size.width-130, child: Text("中文测试测试标题呜呜呜呜呜呜呜呜",style: TextStyle(fontSize: 18),
                          overflow: TextOverflow.ellipsis,maxLines: 2,),),
                        Container(height: 35,),
                        Container(height: 35,width: MediaQuery.of(context).size.width-130,
                          child: Text("一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍一个简单的介绍",
                            overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.black54,fontSize: 12),),),
                      ],
                    ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10),
              child: Row(children: <Widget>[
                Container(
                    height: 35,
                    width: 100,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.description,size: 14,color: Colors.lightBlue,),
                        Padding(padding: EdgeInsets.only(left: 5),child: Text("新闻",style: TextStyle(fontSize: 12,color: Colors.lightBlue),),)
                      ],
                    )
                ),
                Container(height: 35,width: MediaQuery.of(context).size.width-130, child:
                Padding(padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text("01月20 14:46", style: TextStyle(fontSize: 12,color: Colors.black26),),
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
                  ),)
                )
              ],
              )
              ,)
            ],
          )
      )

//
//          Row(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Column(
//                children: <Widget>[
//
//
//                ],
//              ),
//              Padding(padding: EdgeInsets.only(left:10),
//              child:Column(
//                children: <Widget>[
//
//
//                ],
//              ),)
//            ],
//          ),
//        )
//
//        Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Column(
//                  children: <Widget>[
//                    Padding(padding: EdgeInsets.only(bottom: 20),child: Text("Title"),),
//                    Text("helloworld"),
//                  ],
//                )
//              ],
//            )
//            Row(
//              children: <Widget>[
//
//              ],
//            )
//          ],
//        )
      ,
    );
  }
}