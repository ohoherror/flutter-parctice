import 'package:flutter/material.dart';

void main() {
  runApp(const GetStateObjectRoute());
}


class GetStateObjectRoute extends StatefulWidget {

  const GetStateObjectRoute({Key? key}) : super(key: key);

  @override
  State<GetStateObjectRoute> createState() => _GetStateObjectRouteState();
}

class _GetStateObjectRouteState extends State<GetStateObjectRoute> {
  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
// 查找父级最近的Scaffold对应的ScaffoldState对象
                  ScaffoldState _state = context.findAncestorStateOfType<
                      ScaffoldState>()!;
// 打开抽屉菜单
                  _state.openDrawer();
                },
                child: Text('打开抽屉菜单1'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "tip_route");
                  // 直接通过of静态方法来获取ScaffoldState
                  // ScaffoldState _state=Scaffold.of(context);
                  // // 打开抽屉菜单
                  // _state.openDrawer();
                },
                child: Text('打开抽屉菜单2'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,'CupertinoTestRoute');
                },
                child: Text('显示SnackBar'),
              );
            }),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}