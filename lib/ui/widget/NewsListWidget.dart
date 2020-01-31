import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/model/news.dart';

class NewsWidget extends StatefulWidget{
  var data;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsWidgetState(this.data);
  }

  NewsWidget(data){
    this.data = data;
  }
}

class NewsWidgetState extends State<NewsWidget>{
  News news;

  NewsWidgetState(data){
    this.news = new News.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        border: new Border(top: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
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
                    child: Padding(padding: EdgeInsets.all(0),child: Image.network(news.poster,fit: BoxFit.fill,),)
                  ),
                  Container(
                    height: 100,
                    child: Padding(padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(width: MediaQuery.of(context).size.width-130, child: Text(news.title,style: TextStyle(fontSize: 18),
                          overflow: TextOverflow.ellipsis,maxLines: 1,),),
                        Container(width: MediaQuery.of(context).size.width-130,
                          child: Text(news.content,
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
                        Padding(padding: EdgeInsets.only(left: 5),child: Text(news.categoryInfo.name,style: TextStyle(fontSize: 12,color: Colors.lightBlue),),)
                      ],
                    )
                ),
                Container(height: 35,width: MediaQuery.of(context).size.width-130, child:
                Padding(padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text(news.pushTimeDesc, style: TextStyle(fontSize: 12,color: Colors.black26),),
                      ],),
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.message,size: 16,color: Colors.black26),
                              Padding(padding: EdgeInsets.only(left: 2),child:
                              Text(news.reviewCount,style: TextStyle(fontSize: 12,color: Colors.black26),),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 5),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.thumb_up,size: 16,color: Colors.black26),
                                Padding(padding: EdgeInsets.only(left: 2),child:
                                Text(news.dingCount.toString(),style: TextStyle(fontSize: 12,color: Colors.black26),),)
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
      ),
    );
  }
}