import 'dart:io';

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'clipboard.dart';

class RecipeHome extends StatefulWidget {
  @override
  _RecipeHomeState createState() => _RecipeHomeState();
}

class _RecipeHomeState extends State<RecipeHome> {
  num columns = 2;
  var gridIcon = Icons.grid_off;

  Widget _homeGrid() {
    final children = <Widget>[];
    String imgpath;
    List text = [
      'North-American',
      'Swedish',
      'German',
      'African',
      'Asian',
      'American',
      'South-American',
      'Greek'
    ];

    for (var i = 0; i < 8; i++) {
      imgpath = 'assets/images/' + i.toString() + '.jpg';
      children.add(Stack(fit: StackFit.expand, children: [
        Image.asset(
          imgpath,
          fit: BoxFit.cover,
        ),
        Center(
          child: AutoSizeText(
            text[i],
            style: TextStyle(
              color: Colors.white,
              fontSize: 85,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            maxFontSize: 50,
            textAlign: TextAlign.center,
          ),
        )
      ]));
    }
    // children.add(FlatButton(
    //   color: Colors.blue,
    //   child: Text('ASDF'),
    //   onPressed: () => true,
    // ));
    children.add(GetClipboard());

    return GridView.count(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        primary: false,
        padding: EdgeInsets.fromLTRB(6.0, 10, 6.0, 10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: columns,
        children: children);
  }

  // _getFromClipboard() async {
  //   // var result = await Clipboard.getData('text/plain');
  //   // stderr.write(result);
  // }

  changeGridCols() {
    if (columns > 1) {
      setState(() {
        columns = 1;
        gridIcon = Icons.grid_off;
      });
    } else {
      setState(() {
        columns = 2;
        gridIcon = Icons.grid_on;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Stirr',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          actions: [
            IconButton(
              icon: Icon(gridIcon),
              onPressed: changeGridCols,
            )
          ],
        ),
        body: _homeGrid());
  }
}
