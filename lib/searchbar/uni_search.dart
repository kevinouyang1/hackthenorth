import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:unifinder/searchbar/university.dart';

class University {
  final String name;
  final String ranking;
  final String location;
  final String description;

  University({this.name, this.ranking, this.location, this.description});
}

class UniversitySearch extends StatefulWidget {
  @override
  _UniversitySearchState createState() => _UniversitySearchState();
}

class _UniversitySearchState extends State<UniversitySearch> {
  final SearchBarController<University> _searchBarController = SearchBarController();

  Future<List<University>> _getUniversity(String search) async {
    await Future.delayed(Duration(seconds: search.length <= 8 ? 4 : 2));
    if (search != "university") {
      return [];
    }
    return universities;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SearchBar<University> (
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getUniversity,
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
          onItemFound: (University university, int index) {
            return GestureDetector(
              onTap: () {

              },
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 170,
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
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${university.name}',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                                          Text(
                                            '${university.ranking}',
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
                                            '${university.description}',
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
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            '${university.location}',
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.black87,
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
