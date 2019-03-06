import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  int rval = 0;

  void method1(value) {
    setState(() {
      rval = value;
    });
  }

  DateTime dataInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text("Personal Data"),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "ID",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Emergency Phone Number",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            new ListTile(
              leading: const Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
              title: const Text('Birthday'),
              onTap: () async {
                final dtpick = await showDatePicker(
                    context: context,
                    initialDate: new DateTime(1975),
                    firstDate: new DateTime(1950),
                    lastDate: new DateTime(2000));

                if (dtpick != null && dtpick != dataInfo) {
                  setState(() {
                    dataInfo = dtpick;
                  });
                }
              },
            ),
            new ListTile(
              leading: const Icon(
                Icons.person_pin,
                color: Colors.blue,
              ),
              title: const Text('Gender'),
            ),
            new Container(
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio(
                          value: 1,
                          groupValue: rval,
                          onChanged: ((int rval) {
                            method1(rval);
                          })),
                      new Text(
                        'Male',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                      new Radio(
                          value: 2,
                          groupValue: rval,
                          onChanged: ((int rval) {
                            method1(rval);
                          })),
                      new Text(
                        'Female',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      new Radio(
                          value: 3,
                          groupValue: rval,
                          onChanged: ((int rval) {
                            method1(rval);
                          })),
                      new Text(
                        'Others',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
              title: const Text('Joining Date'),
              onTap: () async {
                final dtpick = await showDatePicker(
                    context: context,
                    initialDate: new DateTime(1975),
                    firstDate: new DateTime(1950),
                    lastDate: new DateTime(2000));

                if (dtpick != null && dtpick != dataInfo) {
                  setState(() {
                    dataInfo = dtpick;
                    print(dtpick);
                  });
                }
              },
            ),
            new ListTile(
              leading: const Icon(
                Icons.picture_in_picture,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Insurence Number",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.location_city,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Residence",
                ),
              ),
            ),
            const Divider(
              height: 1.0,
            ),
            new ListTile(
              leading: const Icon(
                Icons.person_pin,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Attendance",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.insert_emoticon,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Awards and Recognition",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.equalizer,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Leave Available",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.equalizer,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Leave Consumed",
                ),
              ),
            ),
            new ListTile(
              leading: const Icon(
                Icons.warning,
                color: Colors.blue,
              ),
              title: new TextField(
                decoration: new InputDecoration(
                  hintText: "Warnings and memo",
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Submit'),
                      color: Theme.of(context).accentColor,
                      elevation: 15.0,
                      splashColor: Colors.white70,
                      onPressed: () {
                        //  Scaffold.of(context).showSnackBar(SnackBar(
                        //         content: Text('Show Snackbar'),
                        //         duration: Duration(seconds: 3),
                        //       ));
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new RaisedButton(
                      child: const Text('Cancel'),
                      color: Theme.of(context).accentColor,
                      elevation: 15.0,
                      splashColor: Colors.white70,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
