import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'images.dart';

class programPage extends StatefulWidget {
  @override
  ProgramPagesState createState() => ProgramPagesState();

}

class ProgramPagesState extends State<programPage> {
  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Engineering Science')),
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
                  const url = 'https://google.com';
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
                          'Website',
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
          height: 1250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: CarouselSlider.builder(
                  itemCount: programImages.length,
                  itemBuilder: (BuildContext context, int itemIndex) =>
                      Container(
                        child: Image.asset(
                          programImages[itemIndex],
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
                          "Engineering Science",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'University of Toronto - St. George Campus',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "27 King's College Cir, Toronto, ON M5S",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            '1st Year Tuition = \$16000',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                child: Text( 'Engineering Science is one of the most recognized programs at the University of Toronto as it is known for its rigorous academics and holistic approach to the field. The first two years within the program will consist of a wide variety of subjects for you to engage in such as engineering, math, science, computing and humanities. The last 2 years of the undergraduate program will allow you to specialize in from one of eight majors (Robotics, Machine Learning, Biomedical Engineering,etc) Overall, the course is made for any individual that is passionate within the field of engineering.',
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
                  "First Term Courses",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 125,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon( Icons.engineering , color: Colors.blue, size: 50,),
                          Text(
                            'Classical Mechanics',
                            style: TextStyle(
                              fontSize: 15,
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
                          Icon(Icons.book, color: Colors.blue, size: 50),
                          Text(
                            'Praxis I',
                            style: TextStyle(
                              fontSize: 15,
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
                          Icon(Icons.build, color: Colors.blue, size: 50),
                          Text(
                            'Structures & Materials',
                            style: TextStyle(
                              fontSize: 15,
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
                          Icon(Icons.add_rounded, color: Colors.blue, size: 50),
                          Center(
                            child: Text(
                              'Engineering Mathematics & Computation',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: [
                          Icon(Icons.computer, color: Colors.blue, size: 50),
                          Text(
                            'Computer Programming',
                            style: TextStyle(
                              fontSize: 15,
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
                          Icon(Icons.add, color: Colors.blue, size: 50),
                          Text(
                            'Calculus I',
                            style: TextStyle(
                              fontSize: 15,
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
                  'Please remember that you must fill out the supplementary application for this program on the UofT engineering applicant portal. Furthermore, on the portal EngSci must be indicated as your top choice for you to apply to the program. For UofT applications in general please remember that you are only allowed to apply to one program per campus.',
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
                  "Admission Requirements",
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 25,
                                      right: 25
                                  ),

                                  child: Text(
                                    "Grade Requirements = 90%+\nSupplementary Application = Required",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Prerequisites Courses",
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "Advanced Functions (MHF4U)\nCalculus & Vectors (MCV4U)\nChemistry (SCH4U)\nEnglish (ENG4U)\nPhysics (SPH4U)",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      )

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
