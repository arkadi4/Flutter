import 'package:coffee_builder/coffee_builder_files/coffee_product.dart';
import 'package:coffee_builder/coffee_builder_files/coffee_builder.dart';

class CoffeeConcreteBuilder extends CoffeeBuilder {

  CoffeeConcreteBuilder() {
    reset();
  }

  CoffeeProduct getCoffee() {
    addGroundCoffee();
    addWater();
    CoffeeProduct result = coffee;
    reset();
    return result;
  }
}

class DoubleCoffeeConcreteBuilder extends CoffeeBuilder {

  DoubleCoffeeConcreteBuilder() {
    reset();
  }

  @override
  void addGroundCoffee() {
    coffee.addIngredient('Two portion of GroundCoffee');
  }

  @override
  void addWater() {
    coffee.addIngredient('Two portion of Water');
  }

  CoffeeProduct getDoubleCoffee() {
    addGroundCoffee();
    addWater();
    CoffeeProduct result = coffee;
    reset();
    return result;
  }
}
