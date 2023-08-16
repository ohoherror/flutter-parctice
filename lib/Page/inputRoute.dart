import 'package:flutter/material.dart';

import '../component/MyCustomInput.dart';

class InputRoute extends StatelessWidget {
  void initState(){
    print('object');
    textController.addListener(() {
      print('object');
      print(textController.text);
    });
  }
  TextEditingController _selectionController =  TextEditingController();

  // const InputRoute({Key? key}) : super(key: key);

  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _selectionController.text="hello world!";
    _selectionController.selection=TextSelection(
        baseOffset: 2,
        extentOffset: _selectionController.text.length
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _selectionController,

              ),
              TextField(
                autofocus: true,
                onChanged: (v) {
                  print("onChange: $v");
                },
                controller:textController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
              ),
            ],
           )
          ),
        ),
      );

  }
}
