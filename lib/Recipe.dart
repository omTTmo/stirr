// import 'dart:html';

class Recipe {
  String name;
  String image;
  List keywords;
  List recipeCategory;
  String recipeCuisine;
  String diet;
  List<String> reipeIngredients;
  List<String> recipeInstructions;
  String publisherName;
  String publisherUrl;
  Duration prepTime;
  Duration cookTime;
  Duration totalTime;
  String recipeYields;

  Recipe(
      {this.name,
      this.image,
      this.keywords,
      this.recipeCategory,
      this.recipeCuisine,
      this.diet,
      this.reipeIngredients,
      this.recipeInstructions,
      this.publisherName,
      this.publisherUrl,
      this.prepTime,
      this.cookTime,
      this.totalTime,
      this.recipeYields});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      // id: json['id'],
      // url: json['url'],
    );
  }
}
