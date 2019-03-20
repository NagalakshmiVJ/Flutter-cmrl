import 'package:flutter/material.dart';

class Preventive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PreventiveState();
  }
}

class PreventiveState extends State<Preventive> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color(0xFF229E9C),
      ),
      title: 'Branch Setup',
      home: new Scaffold(
        body: new Container(
          child: new ListView(
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.all(16.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new TextFormField(
                        decoration: new InputDecoration(
                          labelText: 'Branch Name',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: const EdgeInsets.all(16.0),
                child: new DropdownButton<String>(
                  items: <String>['Men', 'Women'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Preventive extends StatefulWidget {
//   @override
//   _PreventiveState createState() => _PreventiveState();
// }

// class _PreventiveState extends State<Preventive> {
//   List<DropdownMenuItem<int>> listDrop = [];

//   void loadData() {
//     listDrop.add(new DropdownMenuItem(
//       child: new Text('Item1'),
//       value: 1,
//     ));
//     listDrop.add(new DropdownMenuItem(
//       child: new Text('Item2'),
//       value: 2,
//     ));
//     listDrop.add(new DropdownMenuItem(
//       child: new Text('Item3'),
//       value: 3,
//     ));
//   }

// // 1.Attend immediately talking required power bank
// // 2.Attend in Next available power block
// // 3.Attend during next scheduled maintenance

//   @override
//   Widget build(BuildContext context) {
//     loadData();
//     var listDrop2 = listDrop;
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text('Preventive Maintenance'),
//       ),
//       body: Center(
//               child: new Container(
//           child: new DropdownButton(
//             items: listDrop2,
//             onChanged: null,
//           ),
//         ),
//       ),
//     );
//   }
// }
