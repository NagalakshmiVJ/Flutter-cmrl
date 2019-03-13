import 'package:flutter/material.dart';

class Knowledge extends StatefulWidget {
  @override
  _KnowledgeState createState() => _KnowledgeState();
}

class _KnowledgeState extends State<Knowledge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Knowledge'),
        ),
        body: new Container(
          child:
          new Text(
              "Train crews do most of thier work beyond the observations of the supervisors, their duties, responsibilities, ad often even their actions are carefully prescribed in the railroad's operating rulebook. Railroad's operating rules are a subject unto themselves, but it's often said that every rule in the book is there because somebody tried to do something the otherway and proved that it wasn't such a good idea."),
             
        )
        );
  }
}
