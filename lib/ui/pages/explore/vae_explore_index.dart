import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class VaeExploreScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeExploreScreenState();
  }
}

class VaeExploreScreenState extends State<VaeExploreScreen> with SingleTickerProviderStateMixin{

  List<List<Map>> listButton = [
    [{'icon':Icons.games,'color':Colors.orange, 'title':'游戏大厅','text':'','value':0},
      {'icon':Icons.explore,'color':Colors.blue, 'title':'附近的人','text':'','value':0},
      {'icon':Icons.terrain,'color':Colors.green, 'title':'发现群组','text':'','value':0},
    ],
    [
      {'icon':Icons.date_range,'color':Colors.brown, 'title':'签到','text':'未签到','value':0},
      {'icon':Icons.filter_none,'color':Colors.orange, 'title':'任务中心','text':'完成度37.5%','value':1},
      {'icon':Icons.equalizer,'color':Colors.yellow, 'title':'排行榜','text':'','value':0},
      {'icon':Icons.assessment,'color':Colors.red[100], 'title':'排行榜','text':'','value':0},
    ],
    [
      {'icon':Icons.monetization_on,'color':Colors.red[100], 'title':'商城','text':'','value':0},
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
        _list.add(NavButton(listButton[i][j]['icon'], listButton[i][j]['color'], listButton[i][j]['title'],text: listButton[i][j]['text'],value: listButton[i][j]['value']));
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

  Widget NavButton(IconData icon, Color iconColor, String title, {String text='', int value=0}){
    TextStyle redtextstyle = TextStyle(fontSize: 8,color: Colors.white);
    Widget redB = value>0 ? Stack(
      alignment: Alignment.center,
      children: <Widget>[
//        Text(value.toString(),style: TextStyle(fontSize: 8,color: Colors.white),),
        Badge(
          badgeContent: value>0 && value<100 ? Text(value.toString(),style: redtextstyle,) : Text('99+',style: redtextstyle,),
          child: Icon(icon,size: 28,color: iconColor),
        ),
      ],
    ) : Icon(icon,size: 28,color: iconColor);
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
            redB,
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
  int value;
  // 画红点
  _RoundPaint(int value){
    this.value = value;
  }

  Paint _paint = new Paint()
    ..color = Colors.red
    ..strokeWidth = 1
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    canvas.drawCircle(
        Offset(30.0, 0.0),
        6.0,
        _paint
    );
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}