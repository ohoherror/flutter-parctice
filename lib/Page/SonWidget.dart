import 'package:flutter/material.dart';

class SonWidget extends StatefulWidget {
  const SonWidget({super.key});

  @override
  State<StatefulWidget> createState() => SonWidgetState();
}

class SonWidgetState extends State<SonWidget> {
  late String name = "zibo";

  /// 父组件调用此方法实现修改 name
  /// @param newName 新的名字
  void changeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name, style: const TextStyle(fontSize: 40)),
    );
  }
}
