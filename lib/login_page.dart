import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username;
  String _password;
  final usernameEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color(0xFF0776BD),
                    ),
                    padding: EdgeInsets.only(top: 75.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Hero(
                        tag: 'uniFinder'
                            'Logo',
                        child: Image.asset('assets/LogoWhite.png',
                            height: 250, width: 250),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 375,
                  left: (MediaQuery.of(context).size.width) / 10,
                  child: Container(
                    height: 350,
                    width: 330,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.all(const Radius.circular(40.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity((0.5)),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color(0xFF0776BD),
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 15.0 , left: 15.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Username:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF0776BD),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(left: 15.0, right: 15.0),
                          child: TextField(
                            controller: usernameEditingController,
                            onChanged: (text) {
                              this.setState(() {
                                _username = text;
                              });
                            },
                            decoration: InputDecoration(
                                labelText: 'Username'
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(top: 45.0 , left: 15.0) ,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Password:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF0776BD),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:EdgeInsets.only(left: 20.0, right: 15.0),
                          child: TextField(
                            controller: passwordEditingController,
                            obscureText: true,
                            onChanged: (text) {
                              this.setState(() {
                                _password = text;
                              });
                            },
                            decoration: InputDecoration(
                                labelText: 'Password'
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            'Create User',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xFF0776BD),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 680,
                  left: 100,
                  child: RaisedButton(
                      onPressed: () {
                        print(_username);
                        print(_password);
                      },
                      color: Color(0xFF0776BD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Container(
                          height: 70,
                          width: 180,
                          alignment: Alignment.center,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                      )
                  ),
                ),
              ],
            ),
          ),
        ], //Column Children
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}