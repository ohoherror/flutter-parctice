import 'package:flutter/material.dart';

class ConstrainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
     Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));
      return Column(
          children: <Widget>[
            ConstrainedBox(constraints: BoxConstraints(
               minWidth: double.infinity,
              minHeight: 150.0
            ),
              child: Container(height: 40.0,child: redBox,),
            ),
            SizedBox(
              width: 80.0,
              height: 80.0,
              child: redBox,
            ),
            ConstrainedBox(constraints: BoxConstraints(minHeight: 60.0,minWidth: 60.0),
              child: UnconstrainedBox(
                child:ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0,minHeight: 20.0),
                child: redBox,
              ),)
            ),
            UnconstrainedBox(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16),
                // child: Row(children: [Text('xx' * 30)]),
              ),
            ),
          ]
      );
  }
}