import 'package:flutter/material.dart';

class Preventive extends StatefulWidget {
  @override
  _PreventiveState createState() => _PreventiveState();
}

class _PreventiveState extends State<Preventive> {
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop.add(new DropdownMenuItem(
        child: new Text('1.Attend immediately talking required power bank'),
        value: 1,));
    listDrop.add(new DropdownMenuItem(
        child: new Text('2.Attend in Next available power block'), value: 2,));
    listDrop.add(new DropdownMenuItem(
        child: new Text('3.Attend during next scheduled maintenance'),
        value: 3,));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Preventive Maintenance'),
      ),
      body: new Container(
        child: new DropdownButton(
          items: listDrop,
          onChanged: null,
        ),
      ),
    );
  }
}
