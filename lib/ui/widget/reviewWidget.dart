import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewInfo{
  String type;
  String username;
  String avater;
  String time;
  String content;
  List img;
  int good;
  int message;

  ReviewInfo(String type, String username, String avater, String time, String content, List img , int good, int message){
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

class Review extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ReviewState();
  }
}

class ReviewState extends State<Review>{

  ReviewInfo Info = new ReviewInfo('text', '小管家', 'https://i03piccdn.sogoucdn.com/c54eb831b18dcd70', '01月25日 00:00','这是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容是显示内容', ['http://img.zcool.cn/community/0179f05543019a0000019ae90588fe.jpg@2o.jpg'], 300, 1);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        border: new Border(top: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
      ),
      child:Padding(padding: EdgeInsets.all(10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 40,
                  height: 40,
                  child: Padding(padding: EdgeInsets.all(0),
                    child:ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(Info.avater,fit: BoxFit.fill,)
                    ),)
              ),
              Padding(padding: EdgeInsets.only(left: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width-80,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 150,
                                  child: Text(Info.username,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                                ),
                                Container(
                                  width: 150,
                                  child: Text(Info.time, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300,color: Colors.black26),),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.thumb_up,color: Colors.black12,size: 14,),
                                Text("123",style: TextStyle(fontSize: 14,color: Colors.black12),)
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top:10,bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Text(Info.content,style: TextStyle(fontSize: 14),),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Text("共23条回复",style: TextStyle(fontSize: 14,color: Colors.blue[300],fontWeight: FontWeight.w300),),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.add_location,size: 12,),
                            Text("广东",style: TextStyle(fontSize: 12,color: Colors.blue[300]),)
                          ],
                        )
                      ],
                    ),
                  )
              )
            ]),
      )
    );
  }
}