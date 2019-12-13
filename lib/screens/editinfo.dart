import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditInfoScreen extends StatefulWidget {
  @override
  EditInfoScreenState createState() => EditInfoScreenState();
}

class EditInfoScreenState extends State<EditInfoScreen> {
  DateTime selectedfrom;
  DateTime selectedto;
  String dropdownValue = 'Rajkot';
  _showDateTimePicker() async {
    selectedfrom = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2050),
    );

    setState(() {});
  }

  _showDateTimePickertodate() async {
    selectedto = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2050),
    );

    setState(() {});
  }

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
                child: Center(child: Text('Edit Info')),
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
                    height: MediaQuery.of(context).size.width / 4,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  ),
                  FractionalTranslation(
                      translation: Offset(0.0, 0.5),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.width / 4,
                        child: Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
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
                                                    'assets/images/attachment.png'),
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
                                            EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Column(children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Column(
                                                children: <Widget>[
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Upload Profile Image',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Color(0xff414070),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Attach file',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ])),
                                  ],
                                ),
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
              Container(
                  margin: EdgeInsets.fromLTRB(20, 80, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 30,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(0.0),
                                ),
                                borderSide: new BorderSide(
                                  color: Color(0xff767597),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Designation",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          height: 30,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(0.0),
                                ),
                                borderSide: new BorderSide(
                                  color: Color(0xff767597),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          height: 30,
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(0.0),
                                ),
                                borderSide: new BorderSide(
                                  color: Color(0xff767597),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Date of Joining",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff8B8AA9),
                              style: BorderStyle.solid,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new IconButton(
                                icon: new Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                onPressed: () => _showDateTimePicker(),
                              ),
                              selectedfrom != null
                                  ? new Text(
                                      new DateFormat('dd-MMMM-yyyy')
                                          .format(selectedfrom),
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    )
                                  : new SizedBox(
                                      width: 125,
                                      height: 20,
                                      child: Text(
                                        'dd-MM-yyyy',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Leave to Date",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff8B8AA9),
                              style: BorderStyle.solid,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              new IconButton(
                                icon: new Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                onPressed: () => _showDateTimePickertodate(),
                              ),
                              selectedto != null
                                  ? new Text(
                                      new DateFormat('dd-MMMM-yyyy')
                                          .format(selectedto),
                                      style: new TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                    )
                                  : new SizedBox(
                                      width: 125,
                                      height: 20,
                                      child: Text(
                                        'dd-MM-yyyy',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Phone No",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          height: 30,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.left,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(0.0),
                                ),
                                borderSide: new BorderSide(
                                  color: Color(0xff767597),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          width: 360.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              width: 1,
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.deepPurple),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'Rajkot',
                              'Ahmedabad',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(left: 5.0),
                            child: FlatButton(
                              color: Color(0xff050041),
                              textColor: Colors.white,
                              padding: EdgeInsets.all(5.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {},
                              child: Text(
                                'Submit',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ])),
          ],
        ));
  }
}
