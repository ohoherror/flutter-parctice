import 'package:flutter/material.dart';

class stackRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(
            child: Text("xxx"),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(
            widthFactor: 1,
            heightFactor: 1,
            child: Text("xxx"),
          ),
        )
      ],),
    );
  }
}
