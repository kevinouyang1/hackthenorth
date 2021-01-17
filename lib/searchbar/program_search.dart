import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:unifinder/models/university_expanded.dart';
import 'search_programs.dart';
import 'package:unifinder/models/program_expanded.dart';

class Program {
  final String name;
  final String university;
  final String admissionsAverage;
  final String description;
  final String jobRate;
  final String tuition;

  Program({this.name, this.description, this.admissionsAverage, this.university, this.jobRate, this.tuition});
}

class ProgramSearch extends StatefulWidget {
  @override
  _ProgramSearchState createState() => _ProgramSearchState();
}

class _ProgramSearchState extends State<ProgramSearch> {
  final SearchBarController<Program> _searchBarController = SearchBarController();

  Future<List<Program>> _getProgram(String search) async {
    await Future.delayed(Duration(seconds: 2));
    if (search != "engineering") {
      return [];
    }
    return programs;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SearchBar<Program> (
        searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
        headerPadding: EdgeInsets.symmetric(horizontal: 10),
        listPadding: EdgeInsets.symmetric(horizontal: 10),
        onSearch: _getProgram,
        searchBarController: _searchBarController,
        placeHolder: Center(child: Text("No Results")),
        cancellationWidget: Text("Cancel"),
        emptyWidget: Center(child: Text("No program found")),
        onCancelled: () {
          print("Cancelled triggered");
        },
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 1,
        onItemFound: (Program program, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProgramPage()));
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '${program.name}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                                      Text(
                                        '${program.university}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                                      Text(
                                        '${program.description}',
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              'Admissions Average: ${program.admissionsAverage}',
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black87,
                                              ),
                                            ),
                                            Text(
                                              'Tuition: ${program.tuition}',
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text(
                                              "Employment Rate: ${program.jobRate}",
                                              style: const TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                ),
              )
            ),
          );
        },
      )
    );
  }
}




