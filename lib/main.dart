import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//final Color backgroundColor = Color(0xFFAABBCC);
//final Color backgroundColor1 = Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
final backgroundColor = Color(0xFFAABBCC);
final backgroundColor1 = Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);
final bgColor2 = Color.fromARGB(255, 20, 20, 0);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MySwitch("My Switch"),
    );
  }
}

class MySwitch extends StatelessWidget{

  final String title;

  MySwitch(this.title) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello!',
              style: TextStyle(fontSize: 18.0, color: backgroundColor),
            ),
            Theme.of(context).platform == TargetPlatform.iOS
            ? CupertinoSwitch(
              value: true,
              onChanged: (bool value) { print("print iOS => $value");},
            ) : Switch(
              value: true,
              onChanged: (bool value) { print("print Android => $value");},
            )
          ],
        ),
      ),
    );
  }

}



