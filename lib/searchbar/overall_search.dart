import 'package:flutter/material.dart';
import 'package:unifinder/searchbar/program_search.dart';
import 'uni_search.dart';

class OverallSearchBar extends StatefulWidget {
  @override
  _OverallSearchBarState createState() => _OverallSearchBarState();
}

class _OverallSearchBarState extends State<OverallSearchBar> {

  int _currentIndex = 0;
  List<Color> _activeColors = [
    Colors.black,
    Colors.grey,
  ];
  List<double> _chosenWidth = [
    2.5,
    1.0,
  ];
  List<FontWeight> _fontWeight = [
    FontWeight.bold,
    FontWeight.normal,
  ];

  final Widget _university = UniversitySearch();
  final Widget _program = ProgramSearch();

  final List<Widget> _tabs = [];
  @override
  void initState() {
    super.initState();
    _tabs.add(_program);
    _tabs.add(_university);
  }
  Widget build(BuildContext context) {
    return Column(
      children:[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                if(_activeColors[0] != Colors.black) {
                  setState(() {
                    _fontWeight[0] = FontWeight.bold;
                    _activeColors[0] = Colors.black;
                    _chosenWidth[0] = 2.5;
                    _fontWeight[1] = FontWeight.normal;
                    _activeColors[1] = Colors.grey;
                    _chosenWidth[1] = 1.0;
                    _currentIndex = 0;
                  });
                }
              },
              child: Container(
                height: 40.0,
                width: 150.0,
                child: Center(
                  child: Text(
                    "Programs",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: _fontWeight[0],
                      color: _activeColors[0]
                    )
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: _chosenWidth[0], color: _activeColors[0]),
                  )
                ),
              )
            ),
            Container(
              height: 25.0,
              width: 1.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                )
              ),
            ),
            GestureDetector(
              onTap: (){
                if(_activeColors[1] != Colors.black) {
                  setState(() {
                    _chosenWidth[1] = 2.5;
                    _fontWeight[1] = FontWeight.bold;
                    _activeColors[1] = Colors.black;
                    _chosenWidth[0] = 1.0;
                    _fontWeight[0] = FontWeight.normal;
                    _activeColors[0] = Colors.grey;
                    _currentIndex = 1;
                  });
                }
              },
              child: Container(
                height: 40.0,
                width: 150.0,
                child: Center(
                  child: Text(
                    "Universities",
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: _fontWeight[1],
                      color: _activeColors[1],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: _chosenWidth[1], color: _activeColors[1]),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Container(
            height: 1.0,
            width: 50.0,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey
                )
            ),
          ),
        ),
        Expanded(child: _tabs[_currentIndex]),
      ]
    );
  }
}
