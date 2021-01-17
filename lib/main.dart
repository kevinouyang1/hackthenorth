import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:unifinder/main_scaffolding/main_scaffold.dart';
import 'package:unifinder/news/news_child.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: MainScaffold(),
    );
  }
}


