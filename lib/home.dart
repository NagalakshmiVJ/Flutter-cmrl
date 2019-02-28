import 'package:flutter/material.dart';
//import 'personal.dart';
import 'explore.dart';
import 'info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  Widget callPage(int bottomNavIndex) {
    print(bottomNavIndex);
    switch (bottomNavIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return Explore();
        break;
      case 2:
        return Info();
        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
            return Explore();
            // callPage(index);
          });
        },
        items: [
          new BottomNavigationBarItem(
              title: new Text('Home'), icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text('Explore'), icon: new Icon(Icons.explore)),
          new BottomNavigationBarItem(
              title: new Text('Info'), icon: new Icon(Icons.info)),
        ],
      ),
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: new Container(
              child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    "Explore",
                    style: new TextStyle(fontSize: 30.0, color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              new SizedBox(
                height: 10.0,
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Statistics",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Scheduled Maintenance",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Preventive Maintenance",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Breakdown Maintenance",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Equipment History",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Stores",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Personal",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    "Shift Roaster",
                    style: new TextStyle(fontSize: 20.0, color: Colors.brown),
                  )
                ],
              ),
            ],
          )),
        )
      ],
    );
  }
}
