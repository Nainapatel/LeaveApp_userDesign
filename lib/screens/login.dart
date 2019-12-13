import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage("assets/images/log_in_bg.png"),
                fit: BoxFit.fill)),
      ),
      SingleChildScrollView(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                              child: Image.asset(
                                "assets/images/raoinfotech-logo-login.png",
                              ),
                            ),
                            Text(
                              "     Leave",
                              style: TextStyle(
                                  color: Color(0xff6F8FB8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("     Management App",
                                style: TextStyle(
                                    color: Color(0xff6F8FB8),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 2.2,
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.all(25),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Color(0xff152E6B),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.black,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                    ),
                                  )),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blueAccent,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 10.0, 10.0, 10.0),
                                      prefixIcon: Icon(Icons.email),
                                      hintText: "Enter Your Email Address",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 10.0),
                                      ),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  obscureText: true,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.blueAccent,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          10.0, 10.0, 10.0, 10.0),
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 10.0),
                                      ),
                                    )),
                              ),
                              new Container(
                                padding: EdgeInsets.all(15),
                                child: FlatButton(
                                  color: Color(0xff050041),
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(10.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed("/bottomtab");
                                  },
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                              ),
                              new Container(
                                  padding: EdgeInsets.all(10),
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )))
    ]));
  }
}
