import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/images/raoinfotech-logo-login.png',
                  width: 50, height: 50),
              Expanded(
                child: Center(child: Text('Profile')),
              )
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/leave_notification");
                    },
                    child: Stack(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                        )),
                        new Positioned(
                          right: 9,
                          top: 5,
                          child: new Container(
                            padding: EdgeInsets.all(2),
                            decoration: new BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/log_out.png',
                        width: 50, height: 50),
                  ),
                ],
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate([
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    color: Color(0xff01023F),
                    width: MediaQuery.of(context).size.width / 0.5,
                    height: MediaQuery.of(context).size.width / 2.5,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  ),
                  FractionalTranslation(
                      translation: Offset(0.0, 0.5),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Column(
                                        children: <Widget>[
                                          new Container(
                                            alignment: Alignment.topLeft,
                                            padding: EdgeInsets.all(8.0),
                                            width: 60,
                                            height: 60,
                                            decoration: new BoxDecoration(
                                              image: new DecorationImage(
                                                image: new ExactAssetImage(
                                                    'assets/images/hover-3.jpg'),
                                              ),
                                              borderRadius: new BorderRadius
                                                      .all(
                                                  new Radius.circular(90.0)),
                                              border: new Border.all(
                                                width: 1.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(5, 0, 0, 0),
                                        child: Column(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                SizedBox(
                                                    width: 150,
                                                    child: Column(
                                                      children: <Widget>[
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Akshay Karetiya',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'Android Developer',
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 15),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            'As is well known, the ..',
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                      ],
                                                    ))
                                              ],
                                            )
                                          ],
                                        )),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              'assets/images/location.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                            Text(
                                              "Location",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        Text("Ahmedabad",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        Container(
                                          width: 100.0,
                                          height: 50.0,
                                          child: Column(
                                            children: <Widget>[
                                              FlatButton(
                                                onPressed: () => {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          "/editinfo")
                                                },
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(10.0),
                                                        side: BorderSide(
                                                            color:
                                                                Colors.black)),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.add,
                                                      size: 10,
                                                      color: Colors.red,
                                                    ),
                                                    Text(
                                                      "Edit Image",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                                Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.email,
                                                  size: 12,
                                                  color: Color(0xff414070),
                                                ),
                                                Text(
                                                  " akshay.karetiya@gmail.com",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff414070)),
                                                )
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "DOB",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff414070)),
                                                ),
                                                Text(
                                                  " 18 - 7 - 1990",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.phone_in_talk,
                                                  size: 12,
                                                  color: Color(0xff414070),
                                                ),
                                                Text(
                                                  "9632587410",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xff414070)),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Row(
                children: <Widget>[
                  Card(
                      margin: EdgeInsets.fromLTRB(20, 100, 10, 0),
                      color: Color(0xffDDEFFC),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 100,
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Annual Leaves",
                                    style: TextStyle(
                                        color: Color(0xff393C6F),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(),
                                  Text(
                                    "Commitment global cultivate, thought leader framwork. our work.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '3/12',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff393C6F)),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Row(
                children: <Widget>[
                  Card(
                      margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                      color: Color(0xffFAE1DD),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 100,
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Medical Leaves",
                                    style: TextStyle(
                                        color: Color(0xff393C6F),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(),
                                  Text(
                                    "Commitment global cultivate, thought leader framwork. our work.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '2/5',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff393C6F)),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            ])),
            SliverList(
                delegate: SliverChildListDelegate([
              Row(
                children: <Widget>[
                  Card(
                      margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                      color: Color(0xffF8D2E0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 100,
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Medical Leaves",
                                    style: TextStyle(
                                        color: Color(0xff393C6F),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider(),
                                  Text(
                                    "Commitment global cultivate, thought leader framwork. our work.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '3/12',
                                  style: TextStyle(
                                      fontSize: 30, color: Color(0xff393C6F)),
                                )
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              )
            ]))
          ],
        ));
  }
}
