import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class VaeMessageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeMessageScreenState();
  }
}

class VaeMessageScreenState extends State<VaeMessageScreen> with SingleTickerProviderStateMixin{

  List<Map> Systemlist = [
    {'icon':Icons.volume_up,'color':Colors.blue[400],'type':'system', 'title':'官方消息','value':0,},
    {'icon':Icons.alternate_email,'color':Colors.blue[400],'type':'system', 'title':'@我的','value':0,},
    {'icon':Icons.message,'color':Colors.blue[400],'type':'system', 'title':'评论','value':1,},
    {'icon':Icons.thumb_up,'color':Colors.blue[400],'type':'system', 'title':'赞','value':0,},
    {'icon':Icons.free_breakfast,'color':Colors.blue[400],'type':'system', 'title':'喂','value':1,},
    {'icon':Icons.person_pin,'color':Colors.blue[400],'type':'system', 'title':'陌生人','value':0,},


    //如果是用户消息
    {'icon':Icons.free_breakfast,'color':Colors.blue[400],'type':'user', 'title':'喂啊啊啊啊啊','text':'大家好','time':'12:21','value':0},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget createList(){
    List<Widget> body = [];
    for(int i=0; i<Systemlist.length;i++){
      switch(Systemlist[i]['type']){
        case 'system':{
          body.add(NavButton(Systemlist[i]['type'],Systemlist[i]['icon'], Systemlist[i]['color'], Systemlist[i]['title'],value: Systemlist[i]['value']));
        }
        break;
        case 'user':{
          body.add(NavButton(Systemlist[i]['type'],Systemlist[i]['icon'], Systemlist[i]['color'], Systemlist[i]['title'],text: Systemlist[i]['text'],time: Systemlist[i]['time'],value: Systemlist[i]['value']));
        }
        break;
      }
    }
    return Container(child: Column(children: body.map((e)=>e).toList(),));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('消息',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w400),),
        centerTitle: false,
        actions: <Widget>[
          Container(
            width: 90,
            child: FlatButton(child: Text('联系人',style: TextStyle(color: Colors.black12,fontSize: 18),),onPressed: (){},),
          )
        ],
      ),
      body: RefreshIndicator(
          child: ListView(
            children: <Widget>[
              Container(child: createList(),)
//            createList(),
            ],
          ),
          onRefresh: (){}
      ),
    );
  }


  Widget NavButton(String type, IconData icon, Color iconColor, String title, {String text='',String time='' , int value=0}){
    TextStyle redtextstyle = TextStyle(fontSize: 12,color: Colors.white);

    Widget iconShow = DecoratedBox(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [BoxShadow(color: Colors.blue[200],offset: Offset(1.0,1.0),blurRadius:0.0)]),
        child:  Padding(padding: EdgeInsets.only(left: 7,top: 7,bottom: 5,right: 5),child: Icon(icon,size: 36,color: iconColor)));

    Widget redB = value>0 ? Stack(
      alignment: Alignment.center,
      children: <Widget>[
//        Text(value.toString(),style: TextStyle(fontSize: 8,color: Colors.white),),
        Badge(
          badgeContent: value>0 && value<100 ? Padding(padding: EdgeInsets.all(2),child: Text(value.toString(),style: redtextstyle,),)  : Text('99+',style: redtextstyle,),
          child: iconShow,
        ),
      ],
    ) : iconShow;
    Widget buttonbody;
   switch(type) {
     case 'system':
       {
         buttonbody =  Container(
           padding: EdgeInsets.all(10),
           decoration: new BoxDecoration(
             border: new Border(bottom: BorderSide(
                 width: 0.3, color: Colors.black12, style: BorderStyle.solid)),
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                   redB,
                   Padding(padding: EdgeInsets.only(left: 15),
                     child: Text(title, style: TextStyle(
                         fontSize: 16, fontWeight: FontWeight.w400),),)
                 ],
               ),
               Row(
                 children: <Widget>[
                   Icon(Icons.chevron_right, size: 32, color: Colors.black26,),
                 ],
               )
             ],
           ),
         );
       }
       break;
      case 'user':
       {
         buttonbody = Container(
           padding: EdgeInsets.all(10),
           decoration: new BoxDecoration(
             border: new Border(bottom: BorderSide(
                 width: 0.3, color: Colors.black12, style: BorderStyle.solid)),
           ),
           child: Row(
             children: <Widget>[
               Row(
                 children: <Widget>[
                   redB,
                   Padding(padding: EdgeInsets.only(left: 15),
                   child: Column(
                     children: <Widget>[
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Container(width:  MediaQuery.of(context).size.width-130,
                             child: Row(
                               children: <Widget>[
                                 Text(title, style: TextStyle(
                                     fontSize: 16, fontWeight: FontWeight.w400),)
                               ],
                             ),
                           ),
                           Row(
                             children: <Widget>[
                               Text(time,style: TextStyle(fontSize: 12,color: Colors.black26),)
                             ],
                           )
                         ],
                       ),
                       Row(
                         children: <Widget>[
                           Container(width:  MediaQuery.of(context).size.width-100, child: Text(text,overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.black54,fontSize: 14),),),
                         ],
                       )
                     ],
                   ),)
                 ],
               ),
             ],
           ),
         );
       }
       break;
   }
   return FlatButton(padding:EdgeInsets.zero, onPressed: (){print('1');}, child: buttonbody);
  }
}
