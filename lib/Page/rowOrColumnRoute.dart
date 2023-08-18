import 'package:flutter/material.dart';

class RowOrColumnRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      // 在这里设置背景颜色
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('hello world', style: TextStyle(fontSize: 12.0),),Text("I am Jack",style: TextStyle(fontSize: 12.0),)],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello world',style: TextStyle(fontSize: 12.0),),
              Text('I am Jack',style: TextStyle(fontSize: 12.0),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text('hello world',style: TextStyle(fontSize: 12.0),),
              Text('I am Jack',style: TextStyle(fontSize: 12.0),)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(" hello world ", style: TextStyle(fontSize: 30.0),),
              Text(" I am Jack ",style: TextStyle(fontSize: 12.0),),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Hi'),
              Text('world')
            ],
          )
        ],
      ),
    );
  }
}
