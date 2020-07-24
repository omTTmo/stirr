import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetClipboard extends StatefulWidget {
  @override
  _GetClipboardState createState() => _GetClipboardState();
}

class _GetClipboardState extends State<GetClipboard> {
  List<String> _pageData = List<String>();

  @override
  void initState() {
    _getClipboard().then((data) => setState(() {
          _pageData = data;
        }));
    super.initState();
  }

  Future<List<String>> _getClipboard() async {
    await Future.delayed(Duration(seconds: 1));
    return List<String>.generate(10, (index) => '$index title');
  }

  Widget _getListItemUi(int index) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[600],
      ),
      child: Center(
        child: Text(
          _pageData[index],
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView.builder(
          itemCount: _pageData.length,
          itemBuilder: (BuildContext context, int index) =>
              _getListItemUi(index)),
    );
    // return FlatButton(
    //   color: Colors.blue,
    //   textColor: Colors.white,
    //   disabledColor: Colors.grey,
    //   disabledTextColor: Colors.black,
    //   padding: EdgeInsets.all(8.0),
    //   splashColor: Colors.blueAccent,
    //   onPressed: _getClipboard,
    //   child: Text(
    //     buttonText,
    //     style: TextStyle(fontSize: 20.0),
    //   ),
    // );
  }
}
