import 'package:coffee_builder/coffee_builder_files/coffee_product.dart';

class CoffeeBuilder {

  late CoffeeProduct coffee;

  void reset() {
    coffee = CoffeeProduct();
  }

  void addGroundCoffee() {
    coffee.addIngredient('GroundCoffee');
  }

  void addWater() {
    coffee.addIngredient('Water');
  }

  void addMilk() {
    coffee.addIngredient('Milk');
  }

  void addCream() {
    coffee.addIngredient('Cream');
  }

  void addSugar() {
    coffee.addIngredient('Sugar');
  }

  void addCinnamon() {
    coffee.addIngredient('Cinnamon');
  }

  void addSyrup() {
    coffee.addIngredient('Syrup');
  }
}