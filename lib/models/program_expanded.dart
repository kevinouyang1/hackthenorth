import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'images.dart';


class loginPage extends StatefulWidget {
  @override
  loginPageState createState() => loginPageState();
}

class loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('University of Waterloo')),
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 0,
        ),
        width: sWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: 55,
              width: 150,
              child: FloatingActionButton(
                elevation: 5,
                onPressed: () async {
                  print('clicked');
                  const url = 'https://stackoverflow.com/questions/59461065/error-in-flutter-the-url-launcher-is-not-working';
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(75.0),
                ),
                heroTag: null,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: sWidth,
                    minHeight: 50.0,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.web,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          'Website Link',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              width: 150,
              child: FloatingActionButton(
                elevation: 5,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(75.0),
                ),
                heroTag: null,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: sWidth,
                    minHeight: 50.0,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 80,
                        child: Text(
                          'AO Email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(top: 50, bottom: 0),
          height: 1150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: CarouselSlider.builder(
                  itemCount: universityImages.length,
                  itemBuilder: (BuildContext context, int itemIndex) =>
                      Container(
                        child: Image.asset(
                          universityImages[itemIndex],
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 1.5,
                    initialPage: 0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "University of Waterloo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Ontario University Ranking - Top 3',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '200 University Ave W, Waterloo, ON N2L 3G1',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 45,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  "The University of Waterloo is a public institution that was founded in 1957. The Canadian university's main campus is in Waterloo, Ontario and has satellite campuses in nearby Cambridge, Kitchener and Stratford. The university has six main academic divisions: applied health sciences, arts, engineering, environment, math and science. Many of the university's students participate in a co-op program that allows them to alternate academic terms with terms spent in the workforce. More than 120 of Waterloo's undergraduate programs offer a co-op option. ",
                  style: TextStyle(
                    color: Color(0xFF0776BD),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  "Faculties",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(
                            Icons.science,
                            color: Colors.blue,
                            size: 75,
                          ),
                          Text(
                            'Science',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160,
                      child: Column(
                        children: [
                          Icon(Icons.brush, color: Colors.red, size: 75),
                          Text(
                            'Arts',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(Icons.grass, color: Colors.green, size: 75),
                          Text(
                            'Enviornment',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(Icons.add_rounded,
                              color: Colors.yellow, size: 75),
                          Text(
                            'Mathematics',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(Icons.engineering,
                              color: Colors.orange, size: 75),
                          Text(
                            'Engineering',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(Icons.healing_rounded,
                              color: Colors.purple, size: 75),
                          Text(
                            'Engineering',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                ),
                child: Text(
                  "Admission Limitations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  'Please remember you can only apply to 3 programs in total at the University of Waterloo. Furthermore, specifically for the facuilty of engineering you can only apply to 1 program.',
                  style: TextStyle(
                    color: Color(0xFF0776BD),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                  left: 15,
                ),
                child: Text(
                  "Alumni",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            child: Image.asset(
                              'assets/dtPhoto.png',
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                  ),

                                  child: Text(
                                    "Jeremy Wang",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Degree in Mathematics",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Current Job: Youtuber & Gamer",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 100,
                            child: Image.asset(
                              'assets/dtPhoto.png',
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                  ),

                                  child: Text(
                                    "Jeremy Wang",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Degree in Mathematics",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Current Job: Youtuber & Gamer",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 100,
                                  child: Image.asset(
                                    'assets/dtPhoto.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 15,
                                        ),

                                        child: Text(
                                          "Jeremy Wang",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Degree in Mathematics",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        "Current Job: Youtuber & Gamer",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
