import 'package:flutter/material.dart';
import 'package:unifinder/searchbar/news_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  Future newsFuture;
  
  Future getNews() async {
    var params;
    params = news;
    await Future.delayed(const Duration(milliseconds: 800));
    return params;
  }

  _convertNews(var params) {
    List<Widget> news = [];
    for(int x = 0; x < params.length; x++) {
      news.add(
        GestureDetector(
          onTap: () async {
            if (await canLaunch(params[x]['hyperlink'])) {
              await launch(params[x]['hyperlink']);
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image(
                      image: NetworkImage(params[x]['image_link']),
                    ),
                  ),
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
                                    '${params[x]['title']}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                                  Text(
                                    '${params[x]['description']}',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black54,
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
          ),
        ),
      );
      news.add(
        Container(
          height: 2.0,
          width: 350.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
        ),
      );
    }
    return news;
  }


  @override
  void initState() {
    super.initState();
    newsFuture = getNews();
  }
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: newsFuture,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _convertNews(snapshot.data),
          );
        } else {
          return SpinKitRing(
            color: Color(0xFF0776BD),
            lineWidth: 8.0,
            size: 150.0,
          );
        }
      },
    );
  }
}
