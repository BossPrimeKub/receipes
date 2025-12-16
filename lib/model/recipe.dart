import 'package:receipes/model/ingredient.dart';

class Recipe {
  String imgUrl;
  String imgTitle;
  List<Ingredient> ingredients;

  Recipe(this.imgUrl,this.imgTitle, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'assets/images/Aubergine_Thai_jungle_curry.png','Jungle Curry',
      [
        Ingredient(name: 'Aubergines', quantity: 2, unit: ''),
        Ingredient(name: 'Jungle curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Vegetable stock', quantity: 2, unit: 'cups'),
        Ingredient(name: 'Kaffir lime leaves', quantity: 3, unit: ''),
        Ingredient(name: 'Thai chilies', quantity: 2, unit: ''),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
        Ingredient(name: 'Thai basil', quantity: 1, unit: 'handful'),
      ],
    ),
  ];
}

