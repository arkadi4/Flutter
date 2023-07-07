import 'package:coffee_builder/coffee_builder_files/coffee_product.dart';
import 'package:coffee_builder/coffee_builder_files/coffee_builder.dart';

class CustomCoffeeConcreteBuilder extends CoffeeBuilder {

  CustomCoffeeConcreteBuilder() {
    reset();
  }

  CoffeeProduct getCustomCoffee() {
    CoffeeProduct result = coffee;
    reset();
    return result;
  }
}
