import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_vaehome/ui/widget/HomeCard.dart';

class SwiperWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwiperWidgetState();
  }
}

class SwiperWidgetState extends State<SwiperWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 185,
      color: Color(0xFFf0f0f0),
      child: Padding(
        padding: EdgeInsets.only(top:10,bottom: 20),
        child: Swiper(
          itemCount: 3,
          viewportFraction: 0.8,
          scale: 0.8,
          loop: false,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.grey,
              child: CardWidge()
            );
          }),
      )
    );
  }
}