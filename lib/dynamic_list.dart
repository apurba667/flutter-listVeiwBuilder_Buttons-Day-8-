import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({Key? key}) : super(key: key);

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  var list = [
    "apurba",
    "anik",
    "Shams",
    "musfiq",
    "Jaya",
    "Manisha",
    "he",
    "she"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: ((context, index) => ListTile(
                leading: Icon(Icons.person),
                title: Text(list[index]),
                tileColor: Colors.cyan,
                trailing: Icon(Icons.call),
              ))),
    );
  }
}
