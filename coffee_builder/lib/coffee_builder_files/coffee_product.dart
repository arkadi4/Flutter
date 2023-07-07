class CoffeeProduct {
  List ingredients = [];

  void addIngredient(String ingredient) {
    ingredients.add(ingredient);
  }

  String getIngredients() {
    return ingredients.join(', ');
  }
}
