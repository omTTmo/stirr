import 'package:flutter/material.dart';
import 'scraper.dart' as scrap;
import 'home_widget.dart';

class RecipeHome extends StatefulWidget {
  @override
  _RecipeHomeState createState() => _RecipeHomeState();
}

class _RecipeHomeState extends State<RecipeHome> {
  int _currentIndex = 0;
  final _children = [HomeGrid];

  onTabTabbed(int index) {
    setState(() {
      _currentIndex = index;
    });
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
        actions: [],
      ),
      // body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent[400],
        onPressed: () => scrap.initiate(),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTabbed,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Recipes'), icon: Icon(Icons.collections))
        ],
      ),
    );
  }
}
