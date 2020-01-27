import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StepWidgetState();
  }
}

class StepWidgetState extends State<StepWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(padding: EdgeInsets.only(left: 24),
    child: Row(
      children: <Widget>[
        Container(
          height: 150.0,
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 24,
              height: 80,
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomPaint(
                  painter:_LinePaint(),
                  child: Icon(Icons.radio_button_checked,size: 14,color: Colors.black26,),
                )
              ),
            ),
          ),
        ),
        Container(
          height: 90,
          margin: const EdgeInsetsDirectional.only(start: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AnimatedDefaultTextStyle(
                style: Theme.of(context).textTheme.body2,
                duration: kThemeAnimationDuration,
                curve: Curves.fastOutSlowIn,
                child: Text("标题这是", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time, color: Colors.black12,size: 16,),
                        Padding(padding: EdgeInsets.only(left: 5),child: AnimatedDefaultTextStyle(
                          style: Theme.of(context).textTheme.caption,
                          duration: kThemeAnimationDuration,
                          curve: Curves.fastOutSlowIn,
                          child: Text("时间"),
                        ),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_location, color: Colors.black12,size: 16,),
                        Padding(padding: EdgeInsets.only(left: 5),child: AnimatedDefaultTextStyle(
                          style: Theme.of(context).textTheme.caption,
                          duration: kThemeAnimationDuration,
                          curve: Curves.fastOutSlowIn,
                          child: Text("地点"),
                        ),),
                      ],
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}

class RoundShow extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = new Paint()
      ..color = Colors.black26
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = 1.0
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(10, 10), 30, _paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class _LinePaint extends CustomPainter {
  Paint _paint = new Paint()
    ..color = Colors.black26
    ..strokeWidth =0.5
    ..style = PaintingStyle.stroke
    ..isAntiAlias = true
    ..strokeCap = StrokeCap.round;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double mida = 7;
    canvas.drawLine(Offset(mida,-25), Offset(mida,-3), _paint);
    canvas.drawLine(Offset(mida,15), Offset(mida,105), _paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}