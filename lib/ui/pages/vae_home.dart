import 'package:flutter/material.dart';
import 'package:flutter_vaehome/ui/pages/vae/vae_home_index.dart';
import 'package:flutter_vaehome/ui/pages/group/vae_group_index.dart';
import 'package:flutter_vaehome/ui/pages/explore/vae_explore_index.dart';

class VaeHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VaeHomeState();
  }
}

class VaeHomeState extends State<VaeHome>{
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
          VaeHomeScreen(),
          VaeGroupScreen(),
          VaeExploreScreen()
        ],
        physics: NeverScrollableScrollPhysics(), //不重复滑动效果？
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Vae',)),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('圈子',)),
          BottomNavigationBarItem(
              icon: Icon(Icons.language,),
              title: Text('发现')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message,),
              title: Text('消息')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              title: Text('我')
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index){
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black26,
      ),
    );
  }
}