import 'package:flutter/material.dart';
import 'home_page.dart';
// import 'scraper.dart' as scrap;

// void main(List<String> args) async {
//   print(await scrap.initiate());
// }
void main() => runApp(Stirr());

class Stirr extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'Stirr',
      home: new RecipeHome(),
    );
  }
}
