import 'package:flutter/material.dart';
import 'package:myapp1/Page/tipRoute.dart';

import 'contextRoute.dart';

void main() {
  runApp(const TextStyleL());
}

class TextStyleL extends StatelessWidget {
  const TextStyleL({super.key});
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print(args);
    return DefaultTextStyle(
      //1.设置文本默认样式
      style: TextStyle(
        color:Colors.red,
        fontSize: 20.0,
      ),
      textAlign: TextAlign.start,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("hello world"),
          Text("I am Jack"),
          Text("I am Jack",
            style: TextStyle(
                inherit: false, //2.不继承默认样式
                color: Colors.grey
            ),
          ),
          OutlinedButton(
            child: Text("normal"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {},
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text("添加1"),
            onPressed: () {},
          ),

      Image(
          image: AssetImage("lib/assets/images/demo.jpg"),
          width: 200.0,
        color: Colors.blue,
        colorBlendMode: BlendMode.difference,
      )

        ],
      ),
    );

  }
}