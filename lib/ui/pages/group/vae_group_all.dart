import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_vaehome/ui/widget/PostWidget.dart';


class GroupAllScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GroupAllScreenState();
  }
}

class GroupAllScreenState extends State<GroupAllScreen>{
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

  Widget groupClass(){
    List allClass = [
      {'icon': Icons.border_color, 'title': '填嵩词', 'url':''},
      {'icon': Icons.library_books, 'title': '2020', 'url':''},
      {'icon': Icons.keyboard_arrow_down, 'title': '有关V', 'url':''},
      {'icon': Icons.lightbulb_outline, 'title': '原创图', 'url':''},
      {'icon': Icons.volume_up, 'title': '说唱圈', 'url':''},
      {'icon': Icons.keyboard_voice, 'title': '每日话题', 'url':''},
      {'icon': Icons.face, 'title': '露个脸', 'url':''},
      {'icon': Icons.device_unknown, 'title': '想知道', 'url':''},
      {'icon': Icons.local_florist, 'title': '生活圈', 'url':''},
      {'icon': Icons.mood_bad, 'title': '嘿粉圈', 'url':''},
      {'icon': Icons.tag_faces, 'title': '哈哈哈', 'url':''},
      {'icon': Icons.fastfood, 'title': '松果圈', 'url':''},
      {'icon': Icons.volume_up, 'title': '公告圈', 'url':''},
      {'icon': Icons.videogame_asset, 'title': '游戏圈', 'url':''},
      {'icon': Icons.opacity, 'title': '灌水圈', 'url':''},
    ];

    int classLength = allClass.length;
    int page = classLength%8==0 ? classLength~/8 : (classLength~/8)+1;
    List<Widget> swiperWidget = [];
    for(var i = 0; i<page; i++){
      Widget top,bottom;
      top = Row(
        children: <Widget>[
          allClass.length>(i*8)+0 ? myIconButton(allClass[(i*8)+0]) : Container(),
          allClass.length>(i*8)+1 ? myIconButton(allClass[(i*8)+1]) : Container(),
          allClass.length>(i*8)+2 ? myIconButton(allClass[(i*8)+2]) : Container(),
          allClass.length>(i*8)+3 ? myIconButton(allClass[(i*8)+3]) : Container(),
        ],
      );
      bottom = Row(
        children: <Widget>[
          allClass.length>(i*8)+4 ? myIconButton(allClass[(i*8)+4]) : Container(),
          allClass.length>(i*8)+5 ? myIconButton(allClass[(i*8)+5]) : Container(),
          allClass.length>(i*8)+6 ? myIconButton(allClass[(i*8)+6]) : Container(),
          allClass.length>(i*8)+7 ? myIconButton(allClass[(i*8)+7]) : Container(),
        ],
      );
      swiperWidget.add(Column(children: <Widget>[top,bottom],));
    }


    return Container(
        height: 160,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(top:10,left: 10,right: 10,bottom: 0),
//          child: GridView(
//              padding: EdgeInsets.zero,
//              scrollDirection: Axis.horizontal,
//              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                maxCrossAxisExtent: 120.0,
//                childAspectRatio: 0.7
//            ),
//            children: allClass.map((e)=>(IconButton(e))).toList()
//          ),
          child: Swiper(
              key: UniqueKey(),
              index: 0,
              itemCount: 2,
              loop: false,
              pagination: new SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: new DotSwiperPaginationBuilder(
                    activeColor: Colors.blue,
                  color: Colors.black12,
                ),
              ),
              itemBuilder: (context, index) {
                return Container(
                    child: swiperWidget[index]
                );
              }),
        )
    );
  }

  Widget buildWidget(i){
    if(i==0) return groupClass();
    return Container(color: Colors.white, margin: EdgeInsets.only(top: 10),child: Container(padding: EdgeInsets.all(15),child: Post(),),);
  }

  Widget myIconButton(info){

    return Padding(padding: EdgeInsets.all(5),
    child: FlatButton(
      padding: EdgeInsets.zero,
      onPressed: (){print(info['url']);},
      child: Column(
        children: <Widget>[
          Center(
            child: Icon(info['icon'],size: 32,color: Colors.lightBlueAccent,),
          ),
          Center(
            child: Text(info['title'],style: TextStyle(fontSize: 12,color: Colors.black26),),
          ),
        ],
      ),
    ),);
  }

}