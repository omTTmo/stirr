import 'package:flutter/material.dart';

class HomeGrid extends StatefulWidget {
  @override
  _HomeGrid createState() => _HomeGrid();
}

class _HomeGrid extends State<HomeGrid> {
  num columns = 2;
  var gridIcon = Icons.grid_off;

  final children = <Widget>[];
  String imgpath;
  // List text = [
  //   'North-American',
  //   'Swedish',
  //   'German',
  //   'African',
  //   'Asian',
  //   'American',
  //   'South-American',
  //   'Greek'
  // ];

  // for (var i = 0; i < 8; i++) {
  //   imgpath = 'assets/images/' + i.toString() + '.jpg';
  //   children.add(Stack(fit: StackFit.expand, children: [
  //     Image.asset(
  //       imgpath,
  //       fit: BoxFit.cover,
  //     ),
  //     Center(
  //       child: Text(
  //         text[i],
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 85,
  //           fontWeight: FontWeight.bold,
  //         ),
  //         maxLines: 2,
  //         textAlign: TextAlign.center,
  //       ),
  //     )
  //   ]));
  // }
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blue);
  }
}
