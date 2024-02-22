
class Recipe {
  String label;
  String imageUrl;
int servings;
List<Ingredient> ingredient;
  //TODO: Add servings and ingredients here

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredient,
  );
  //TODO: Add list of Recipe here

  static List<Recipe> samples = [
    Recipe('Beans Stew with Fried Riped Plantain', 'assets/images/gobe.jpeg',
    4,
    [
      Ingredient(600, 'grams', 'dried beans',),
      Ingredient(100, 'ml', 'palm oil',),
      Ingredient(4, 'plum tomatoes', 'roughly chopped',),
      Ingredient(6, 'sliced diagonal', 'ripe plantains'),
      Ingredient(1/2, 'tbsp', 'dried chilli flakes'),
    ],
    ),
    Recipe('Jollof Rice', 'assets/images/ghanaian-jollof.jpg',
    2,
    [
      Ingredient(2, 'cups', 'Local Rice',),
      Ingredient(2, 'bulbs', 'Onions, 1 chopped, 1 blended',),
      Ingredient(1, 'Can', 'tomato sauce',),
      Ingredient(2, 'tbsp', 'Vegetable Oil',),
    ],
    ),
    Recipe('Spinach Stew with Boiled Plantain', 'assets/images/Spinach Stew.jpg',
    1,
    [
      Ingredient(1/2, 'cup', 'palm oil or vegetable oil',),
      Ingredient(1, 'tbsp', 'Tomato Paste',),
      Ingredient(2, 'pounds', 'plum tomatoes, chopped',),
      Ingredient(3/4, 'cup', 'egusi(raw shelled pumpkin seeds)',),
      Ingredient(1, 'pound', 'washed, dried and roughly chopped spinach',),
      Ingredient(5, 'fingers', 'peeled and boiled plantain',),
    ],
    ),
    Recipe('Banku and Tilapia', 'assets/images/banku.webp',
    24,
    [
      Ingredient(2, 'cups', 'corn dough',),
      Ingredient(1, 'piece', 'Large Tilapia, grilled',),
      Ingredient(2, 'tbsp', 'Grinded Pepper',),
      Ingredient(1, 'piece', 'Green Pepper, chopped',),
      Ingredient(1, 'piece', 'onion, chopped',),
    ],
    ),
    Recipe('Fufu and Goat-Meat Light Soup', 'assets/images/fufu.webp',
    1,
    [
    Ingredient(5, '', 'Cassava and Plantain, boiled and pounded',),
      Ingredient(1, 'pound', 'Chopped goat-meat',),
      Ingredient(2, 'tbsp', 'Grinded Pepper',),
      Ingredient(1, 'piece', 'Green Pepper, chopped',),
      Ingredient(1, 'piece', 'onion, chopped',),
    ],
    ),
    Recipe('Rice Balls and Chicken', 'assets/images/riceball.webp',
     4,
      [
      Ingredient(2, 'cups', 'Rice',),
      Ingredient(1, 'pound', 'chopped chicken',),
      Ingredient(1, 'bowl', 'groundnut soup',),
     ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
