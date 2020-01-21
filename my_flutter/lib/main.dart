
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Presenters/infoScreen.dart';

void main() {
  runApp(
     MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => FullScreenView(),
        '/mini': (context) => Container(),
      },
    );
  }
}









