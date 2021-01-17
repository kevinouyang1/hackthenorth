import 'package:flutter/material.dart';
import 'package:unifinder/news/news_child.dart';
import 'package:unifinder/searchbar/overall_search.dart';

class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  List<Widget> _navigatorChildren = [
    OverallSearchBar(),
    NewsPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0776BD),
        title: Text("UniFinder"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        elevation: 5.0,
        backgroundColor: Colors.white,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search"
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: "News"
          ),
        ],
      ),
      body: _navigatorChildren[_currentIndex],
    );
  }
}
