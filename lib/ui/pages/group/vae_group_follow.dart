import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/PostWidget.dart';

class GroupFollowScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupFollowScreenState();
  }
}

class GroupFollowScreenState extends State<GroupFollowScreen>{

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

  Widget buildWidget(i){
    return Container(color: Colors.white, margin: EdgeInsets.only(top: 10),child: Container(padding: EdgeInsets.all(15),child: Post(),),);
  }
}