import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class VaeMyScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeMyScreenState();
  }
}

class VaeMyScreenState extends State<VaeMyScreen> with SingleTickerProviderStateMixin{

  List<List<Map>> listButton = [
    [{'icon':Icons.enhanced_encryption,'color':Colors.black38, 'title':'松果铺子','text':'','value':0},
      {'icon':Icons.school,'color':Colors.black38, 'title':'会员中心','text':'','value':0},
      {'icon':Icons.content_paste,'color':Colors.black38, 'title':'订单管理','text':'','value':0},
      {'icon':Icons.card_giftcard,'color':Colors.black38, 'title':'邀请好友得好礼','text':'','value':0},
    ],
    [
      {'icon':Icons.bookmark,'color':Colors.black38, 'title':'勋章','text':'','value':0},
      {'icon':Icons.folder_open,'color':Colors.black38, 'title':'收藏','text':'','value':0},
    ],
    [
      {'icon':Icons.stars,'color':Colors.black38, 'title':'荧光棒','text':'','value':0},
      {'icon':Icons.email,'color':Colors.black38, 'title':'意见反馈','text':'','value':0},
      {'icon':Icons.lightbulb_outline,'color':Colors.black38, 'title':'帮助中心','text':'','value':0},
    ],
    [
      {'icon':Icons.perm_contact_calendar,'color':Colors.black38, 'title':'个人资料','text':'','value':0},
      {'icon':Icons.settings,'color':Colors.black38, 'title':'设置','text':'','value':0},
    ]
  ];

  Widget menuList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget userInfo(){
    Widget userinfo = Padding( padding: EdgeInsets.all(10),
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network('https://i03piccdn.sogoucdn.com/c54eb831b18dcd70',fit: BoxFit.fill,)
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10),
              child: Container(
                width: 200,
                child: Column(
                  children: <Widget>[
                    Container(
                      width:200,
                      child: Row(
                        children: <Widget>[
                          Text("白痴少年要打游戏", style: TextStyle(fontSize: 16),),
                          Padding(padding: EdgeInsets.only(left:5),child: Text ('🚺'),)
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Padding(padding: EdgeInsets.only(top: 5,bottom: 5),
                          child: Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right: 5),
                                child:Text("LV.12",style: TextStyle(fontSize: 14,color: Colors.blue[300]),),
                              ),
                              Container(
                                width: 100,
                                height: 5,
                                child: LinearProgressIndicator(
                                  backgroundColor: Colors.blue[100],
                                  value: 0.9,
                                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue[400]),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("ID:2333333",style: TextStyle(fontSize: 12,color: Colors.black12),),
                          Padding(padding: EdgeInsets.only(left: 5),child: Text("人气:2333333",style: TextStyle(fontSize: 12,color: Colors.black12),),)
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
          FlatButton(
            padding: EdgeInsets.zero,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('个人主页',style: TextStyle(fontSize: 14,color: Colors.black38),),
                Icon(Icons.chevron_right,size: 32,color: Colors.black26,),
              ],
            ),
            onPressed: (){print("跳转页面");},
          )
        ],
      ),
    );

    Widget userfriend = Container(
      decoration: new BoxDecoration(
        border: new Border(top: BorderSide(width: 0.3,color: Colors.black12, style: BorderStyle.solid)),
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(onPressed: (){}, child: Container(
            width: MediaQuery.of(context).size.width/4,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("1",style: TextStyle(fontSize: 18),),
                Text("粉丝",style: TextStyle(fontSize: 14,color: Colors.black54),),
              ],
            ),
          )),
          FlatButton(onPressed: (){}, child: Container(
            width: MediaQuery.of(context).size.width/4,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("1",style: TextStyle(fontSize: 18),),
                Text("关注",style: TextStyle(fontSize: 14,color: Colors.black54),),
              ],
            ),
          )),
          FlatButton(onPressed: (){}, child: Container(
            width: MediaQuery.of(context).size.width/4,
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("1",style: TextStyle(fontSize: 18),),
                Text("好友",style: TextStyle(fontSize: 14,color: Colors.black54),),
              ],
            ),
          )),
        ],
      ),
    );
    
    return Container(
      margin: EdgeInsets.only(top:10,bottom: 10),
      color: Colors.white,
      height:150,
      child: Column(
        children: <Widget>[
          userinfo,
          userfriend
        ],
      ),
    );
  }
  
  Widget userCard(){
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      height: 70,
      child:Row(
        children: <Widget>[
         FlatButton(
           padding: EdgeInsets.zero,
           child: Container(
             decoration: new BoxDecoration(
               border: new Border(right: BorderSide(width: 0.1,color: Colors.black26, style: BorderStyle.solid)),
             ),
             width: MediaQuery.of(context).size.width/2,
             height: 70,
             child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Icon(Icons.account_balance_wallet,color: Colors.blue[300],size: 32,),
                   Padding(padding: EdgeInsets.only(left:5),child: Text('我的账户',style: TextStyle(fontSize: 16),),)
                 ],
               ),
           ),
           onPressed: (){},
         ),
          FlatButton(
            padding: EdgeInsets.zero,
            child: Container(
              width: MediaQuery.of(context).size.width/2,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Icon(Icons.content_copy,color: Colors.blue[300],size: 32,),
                 Padding(padding: EdgeInsets.only(left:5),child: Text('纪念卡',style: TextStyle(fontSize: 16),),)
               ],
             ),
            ),
            onPressed: (){},
         )
       ],
      ),
    );
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
    return Scaffold(appBar:AppBar(title: Text('我',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w400),),centerTitle: false,),
        body:RefreshIndicator(
            child: ListView(
              children: <Widget>[
                userInfo(),
                userCard(),
                Container(child: createList(),)
//            createList(),
              ],
            ),
            onRefresh: (){}
        ),
      );
  }

  Widget pageCover(){
    return Container(
      height: 210,
      child: new Image.network("http://5b0988e595225.cdn.sohucs.com/images/20200103/0eddf8d53c1e4262aef9952f3c8bbfc3.jpeg", fit: BoxFit.fill,),
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
   return FlatButton(onPressed: (){print("1");},
       padding: EdgeInsets.zero,
       child: Container(
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
                 Padding(padding: EdgeInsets.only(left: 10),child: Text(title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),)
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
       )
   );
  }
}
