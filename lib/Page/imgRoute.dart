import 'package:flutter/material.dart';

void main() {
  runApp(const ImgRoute(text: '544554',));
}

class ImgRoute extends StatelessWidget {
  const ImgRoute({Key? key,required this.text}):super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("提示"),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(text),
                ElevatedButton(onPressed: ()=>Navigator.pop(context,'我是返回值'), child: Text('返回')),
                Text("Hello world",
                  textAlign: TextAlign.left,
                ),
                Text("Hello world! I'm Jack. "*4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ), ElevatedButton(
                    onPressed:()=>Navigator.pushNamed(context, 'text_style'),
                    child:Text(
                      "Hello world",
                      textScaleFactor: 1.5,
                    )

                ),
                Text("Hello world",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      height: 1.2,
                      fontFamily: "Courier",
                      background: Paint()..color=Colors.yellow,
                      decoration:TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed
                  ),),
                Text.rich(TextSpan(
                    children: [
                      TextSpan(
                          text: "Home: "
                      ),
                      TextSpan(
                        text: "https://flutterchina.club",
                        style: TextStyle(
                            color: Colors.blue
                        ),
                        // recognizer: _tapRecognizer
                      ),
                    ]
                ))
              ],
            ),
          ),
        )
    );
  }
}