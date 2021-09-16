import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Center(
        child: Column(
          children: [
            AppBar(
              title: Text('Bar'),
            ),
            ElevatedButton( // former RaisedButton
              onPressed: () => print(' Elevated button Clicked'),
              child: Text('Elevated button'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange,),
                foregroundColor: MaterialStateProperty.all(Colors.white,),
              ),
            ),
            ElevatedButton( // former RaisedButton
              onPressed: () => print(' Elevated style 2 button Clicked'),
              child: Text('Elevated style 2 button'),
              style: ElevatedButton.styleFrom(primary: Colors.orange,onPrimary: Colors.white,),
            ),
            TextButton( // former flat button
              onPressed: () => print(' Text button Clicked'),
              child: Text('Text button'),
              style: TextButton.styleFrom(primary: Colors.orange)
            ),
            OutlinedButton( // former outline button
              onPressed: () => print(' Outline button Clicked'),
              child: Text('Outline button'),
              style: OutlinedButton.styleFrom(primary: Colors.orange,side: BorderSide(width: 2,color: Colors.orange)),
            ),
          ],
        ),
      ),
    );
  }
}
