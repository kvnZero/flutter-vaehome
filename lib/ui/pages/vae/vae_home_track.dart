import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/MySwiper.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class VaeTrackScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeTrackScreenState();
  }
}

class VaeTrackScreenState extends State<VaeTrackScreen>{
  var bannerUrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future getPageInfo() async{
    setState(() {
      bannerUrl = "http://5b0988e595225.cdn.sohucs.com/images/20200103/0eddf8d53c1e4262aef9952f3c8bbfc3.jpeg";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    getPageInfo();
    return RefreshIndicator(
      child: new ListView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 210,
                child: new Image.network(bannerUrl, fit: BoxFit.fill,),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
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
              ),
              SwiperWidget(),
            ],
          ),
        ],
      ),
      onRefresh: _onRefresh);
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      print("刷新页面");
      getPageInfo();
    });
  }
}