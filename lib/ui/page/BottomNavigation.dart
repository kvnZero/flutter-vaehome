import 'package:flutter/material.dart';


class BottomNavigationWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationWidgetState();
  }
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget>{
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  var _controller =  PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _controller,
        children: <Widget>[

        ],
        physics: NeverScrollableScrollPhysics(), //不重复滑动效果？
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: _bottomNavigationColor,),
              title: Text('Vae', style: TextStyle(color: _bottomNavigationColor),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps, color: _bottomNavigationColor,),
              title: Text('圈子', style: TextStyle(color: _bottomNavigationColor),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.language, color: _bottomNavigationColor,),
              title: Text('发现', style: TextStyle(color: _bottomNavigationColor),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: _bottomNavigationColor,),
              title: Text('消息', style: TextStyle(color: _bottomNavigationColor),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _bottomNavigationColor,),
              title: Text('我', style: TextStyle(color: _bottomNavigationColor),)
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}