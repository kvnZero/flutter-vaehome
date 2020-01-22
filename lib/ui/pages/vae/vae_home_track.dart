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
      bannerUrl = "http://img.sccnn.com/simg/342/11279.jpg";
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
                height: 200,
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
                child:Padding(padding: EdgeInsets.all((5.0)),child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
//                    alignment: FractionalOffset.topRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding( padding: EdgeInsets.only(top: 2.5),child: Icon(Icons.date_range, color: Colors.lightBlueAccent,size: 16,)),
                          Padding( padding: EdgeInsets.only(left: 4),child: Text("许嵩来了",style: TextStyle(fontSize: 14,color: Colors.black87)),),
                        ],
                      ),
                    ),
                    new Align(
                      alignment: FractionalOffset.topRight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 2),child:Text("更多", style: TextStyle(fontSize: 14,color: Colors.black38),textAlign: TextAlign.right)),
                          Padding(padding: EdgeInsets.all(0),child:Icon(Icons.chevron_right))
                        ],
                      ),
                    )
                  ],
                ),)
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