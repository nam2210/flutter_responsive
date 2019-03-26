import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
        primarySwatch: Colors.blue,
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
              style: TextStyle(fontSize: 18.0),
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



