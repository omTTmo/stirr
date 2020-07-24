import 'dart:convert';
import 'package:http/http.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';

Future initiate() async {
  var client = Client();
  var url =
      'https://ohsheglows.com/2020/04/25/cozy-at-home-spicy-any-veggie-soup/';
  try {
    Response response = await client.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // Use html parser and query selector
      var document = parse(response.body);
      dynamic recipeLD =
          document.querySelector('script[type="application/ld+json"]').text;
      // Map<String, dynamic> recipe = jsonDecode(recipeLD);

      // print(recipe['recipeYield']);
      // Recipe.fromJson(recipeLD);
    }
  } catch (e) {
    print(e);
  }
}
