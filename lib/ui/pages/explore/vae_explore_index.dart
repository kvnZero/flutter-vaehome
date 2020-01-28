import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/widget/MyUnderlineTabindicator.dart';
import 'package:flutter_vaehome/ui/pages/group/vae_group_all.dart';
import 'package:flutter_vaehome/ui/pages/group/vae_group_hot.dart';
import 'package:flutter_vaehome/ui/pages/group/vae_group_follow.dart';

class VaeExploreScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeExploreScreenState();
  }
}

class VaeExploreScreenState extends State<VaeExploreScreen> with SingleTickerProviderStateMixin{

  List<List<Map>> listButton = [
    [{'icon':Icons.games,'color':Colors.orange, 'title':'游戏大厅','text':''},
      {'icon':Icons.explore,'color':Colors.blue, 'title':'附近的人','text':''},
      {'icon':Icons.terrain,'color':Colors.green, 'title':'发现群组','text':''},
    ],
    [
      {'icon':Icons.date_range,'color':Colors.brown, 'title':'签到','text':'未签到'},
      {'icon':Icons.filter_none,'color':Colors.orange, 'title':'任务中心','text':'完成度37.5%'},
      {'icon':Icons.equalizer,'color':Colors.yellow, 'title':'排行榜','text':''},
      {'icon':Icons.assessment,'color':Colors.red[100], 'title':'排行榜','text':''},
    ],
    [
      {'icon':Icons.monetization_on,'color':Colors.red[100], 'title':'商城','text':''},
    ]
  ];

  Widget menuList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget createList(){
    List<Widget> body = [];
    for(int i=0; i<listButton.length;i++){
      List<Widget> _list = [];
      for(int j=0; j<listButton[i].length;j++){
        _list.add(NavButton(listButton[i][j]['icon'], listButton[i][j]['color'], listButton[i][j]['title'],text: listButton[i][j]['text']));
      }
      body.add(Container(
        color: Colors.white,
        margin: EdgeInsets.only(bottom: 5),
        child: Column(children: _list.map((e)=>e).toList(),),
      ));
    }
    return Container(child: Column(children: body.map((e)=>e).toList(),));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(color: Color.fromRGBO(128, 128, 128, 0.1), child:
    RefreshIndicator(
        child: ListView(
          children: <Widget>[
            pageCover(),
            searchButton(),
            Container(child: createList(),)
//            createList(),
          ],
        ),
        onRefresh: (){}
    ));
  }

  Widget pageCover(){
    return Container(
      height: 210,
      child: new Image.network("http://5b0988e595225.cdn.sohucs.com/images/20200103/0eddf8d53c1e4262aef9952f3c8bbfc3.jpeg", fit: BoxFit.fill,),
    );
  }

  Widget searchButton(){
    return Container(
      child: Container(
          height: 40,
          margin: EdgeInsets.all(10),
          child: FlatButton(
            color: Colors.white,
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
                Padding(padding: EdgeInsets.only(left: 10),child: Text("找人",style: TextStyle(color: Colors.black26,fontSize: 14),)),
              ],
            ),
            onPressed: (){
              print('跳转页面');
            },
          )
      ),
    );
  }

  Widget NavButton(IconData icon, Color iconColor, String title, {String text=''}){
   return Container(
     padding: EdgeInsets.all(10),
     decoration: new BoxDecoration(
       border: new Border(bottom: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
         Row(
           children: <Widget>[
             Icon(icon,size: 28,color: iconColor),
             Padding(padding: EdgeInsets.only(left: 10),child: Text(title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),)
           ],
         ),
         Row(
           children: <Widget>[
             Text(text,style: TextStyle(fontSize: 14,color: Colors.black26),),
             Icon(Icons.chevron_right,size: 32,color: Colors.black26,),
           ],
         )
       ],
     ),
   );
  }
}

class _RoundPaint extends CustomPainter {
  // 画红点
  Paint _paint = new Paint()
    ..color = Colors.red
    ..strokeWidth = 1
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawCircle(
        Offset(35.0, 0.0),
        4.0,
        _paint
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}