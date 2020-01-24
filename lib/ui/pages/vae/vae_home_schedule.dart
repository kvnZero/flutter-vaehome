import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter_vaehome/ui/widget/stepperButton.dart';

class VaeScheduleScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeScheduleScreenState();
  }
}

class VaeScheduleScreenState extends State<VaeScheduleScreen>{
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
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 210,
            child: new Image.network(bannerUrl, fit: BoxFit.fill,),
          ),
          Expanded(child: ListView.builder(itemCount: 10,itemBuilder: (content, index){
            return Material(
              child: StickyHeader(
                  header: Container(height: 50,
                    color: Color.fromRGBO(10, 10, 10, 0.05),
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("2019-12", style: TextStyle(color: Colors.black26,fontSize: 16),),),
                  content: new Container(
                    height: 130,
                    child: FlatButton(onPressed: _onRefresh, child: StepWidget())
                  )
              ),
            );
          }
          ))
        ],
      )
    );
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      print("刷新页面");
      getPageInfo();
    });
  }
}
