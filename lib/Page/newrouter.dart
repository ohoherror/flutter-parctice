import 'package:flutter/material.dart';
import 'package:myapp1/Page/tipRoute.dart';

import 'contextRoute.dart';

void main() {
  runApp(const NewRoute());
}

class NewRoute extends StatelessWidget {
  const NewRoute({super.key});
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    print(args);
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return GetStateObjectRoute(
                  // 路由参数
                  // text: "我是提示xxxxtttt",
                );
              },
            ),
          );
          //输出`TipRoute`路由返回结果
          print("路由返回值: $result");
        },
        child: Text("打开提示页"),
      ),
    );
  }
}