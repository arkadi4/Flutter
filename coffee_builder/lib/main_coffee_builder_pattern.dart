import 'package:flutter/material.dart';
import 'package:coffee_builder/coffee_builder_files/concrete_builders.dart';
import 'package:coffee_builder/coffee_builder_files/custom_concrete_builder.dart';


void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String yourProduct = '';
  List ingredientsArray = [];
  CustomCoffeeConcreteBuilder customBuilder = CustomCoffeeConcreteBuilder();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Welcome, you can make simple coffee by pressing '
                    'the button below and see the ingredient at the bottom '
                    'of the screen in green container'),
                TextButton(
                  onPressed: () {
                    setState(() {
                      yourProduct = CoffeeConcreteBuilder().getCoffee().
                      getIngredients();
                    });
                  },
                  child: const Text('make coffee'),
                ),
                const Text('Or make double coffee'),
                TextButton(
                  onPressed: () {
                    setState(() {
                      yourProduct = DoubleCoffeeConcreteBuilder().getDoubleCoffee().
                      getIngredients();
                    });
                  },
                  child: const Text('make double coffee'),
                ),
                const Text('Or make custom coffee from the ingredients below'),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('ground coffee');
                      ingredientsArray.add('water');
                      customBuilder.addGroundCoffee();
                      customBuilder.addWater();
                    });
                  },
                  child: const Text('add ground coffee and water'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('ground coffee');
                      ingredientsArray.add('water');
                      ingredientsArray.add('ground coffee');
                      ingredientsArray.add('water');
                      customBuilder.addGroundCoffee();
                      customBuilder.addWater();
                      customBuilder.addGroundCoffee();
                      customBuilder.addWater();
                    });
                  },
                  child: const Text('add ground coffee and water twice'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('milk');
                      customBuilder.addMilk();
                    });
                  },
                  child: const Text('add milk'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('cream');
                      customBuilder.addCream();
                    });
                  },
                  child: const Text('add cream'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('sugar');
                      customBuilder.addSugar();
                    });
                  },
                  child: const Text('add sugar'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('cinnamon');
                      customBuilder.addCinnamon();
                    });
                  },
                  child: const Text('add cinnamon'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray.add('syrup');
                      customBuilder.addSyrup();
                    });
                  },
                  child: const Text('add syrup'),
                ),
                const SizedBox(height: 20.0,),
                Text(
                  // currentIngredients,
                  'Your current ingredients are: ${ingredientsArray.join(', ')}',
                ),
                const SizedBox(height: 20.0,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray = [];
                      yourProduct = customBuilder.getCustomCoffee().getIngredients();
                    });
                  },
                  child: const Text('make custom coffee'),
                ),
                const SizedBox(height: 20.0,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      ingredientsArray = [];
                      customBuilder.reset();
                    });
                  },
                  child: const Text('reset ingredients'),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'You coffee is made of $yourProduct',
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
