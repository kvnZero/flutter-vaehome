import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_vaehome/ui/widget/PartyCard.dart';

class VaePartyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaePartyScreenState();
  }
}

class VaePartyScreenState extends State<VaePartyScreen>{
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
    return new RefreshIndicator(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) => buildWidget(i),
        ),
        onRefresh: _onRefresh);
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(seconds: 3),(){
      print("刷新页面");
      getPageInfo();
    });
  }

  Widget pageCover(){
    return Container(
      height: 210,
      child: new Image.network(bannerUrl, fit: BoxFit.fill,),
    );
  }

  Widget pageSearch(){
    return Padding(padding: EdgeInsets.only(left: 15,right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
          child: FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            child: Row(
              children: <Widget>[
                Text("全部活动",style: TextStyle(color: Colors.black26,fontSize: 14),),
                Padding(padding: EdgeInsets.only(left: 0),child: Icon(Icons.expand_more, size: 30,color: Colors.black12,),)
              ],
            ),
            onPressed: (){
              showChooseDialog();
            },
          ),
          ),
          Expanded(
            flex: 1,
            child: Padding(padding: EdgeInsets.only(left: 10),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 0),child: Icon(Icons.search, size: 26,color: Colors.lightBlue,),),
                  Padding(padding: EdgeInsets.only(left: 10),child: Text("搜索城市或活动",style: TextStyle(color: Colors.black26,fontSize: 14),)),
                ],
              ),
              onPressed: (){
                showChooseDialog();
              },
            ),)
          )
        ],
      ),);
  }

  void showChooseDialog(){
    showDialog (context: context, builder:(context){
      return SimpleDialog(
        children: <Widget>[
          SimpleDialogOption(
            child: Text("查看全部活动"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          SimpleDialogOption(
            child: Text("查看附近活动"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          SimpleDialogOption(
            child: Text("取消"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },);
  }

  Widget buildWidget(i){
    if(i==0) return pageCover();
    if(i==1) return pageSearch();

    return PartyCardWidge();
  }
}
