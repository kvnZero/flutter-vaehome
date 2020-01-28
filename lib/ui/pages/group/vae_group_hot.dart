import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/PostWidget.dart';

class GroupHotScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupHotScreenState();
  }
}

class GroupHotScreenState extends State<GroupHotScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future getPageInfo() async{
    setState(() {
      print("加载数据");
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    getPageInfo();
    return  RefreshIndicator(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) => buildWidget(i),
//            controller: _controller,
        ),
        onRefresh: _onRefresh);
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      print("刷新页面");
      getPageInfo();
    });
  }

  Widget RankButton(){
    return Container(
        height: 70,
        color: Colors.white,
        child: Padding(padding: EdgeInsets.only(left: 20,right: 10,top: 5,bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.android,size: 38,color: Colors.orange,),
                Container(
                  height: 70,
                  margin: EdgeInsets.only(top: 10,left: 5),
                  child: Column(
                    children: <Widget>[
                      Container(width: MediaQuery.of(context).size.width-120,child: Row(
                        children: <Widget>[
                          Text("最热排行",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                          Icon(Icons.whatshot, color: Colors.orange,)
                        ],
                      ),),
                      Container(width: MediaQuery.of(context).size.width-120,child:Text("全站最热的帖子尽搜罗", style: TextStyle(fontSize: 12,color: Colors.black12),))
                    ],
                  ),
                )
              ],
            ),
            Icon(Icons.chevron_right,size: 32,color: Colors.black26,),
          ],
        ),)
    );
  }

  Widget buildWidget(i){
    if(i==0) return RankButton();
    return Container(color: Colors.white, margin: EdgeInsets.only(top: 10),child: Container(padding: EdgeInsets.all(15),child: Post(),),);
  }
}