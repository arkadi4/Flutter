import 'package:factory_pattern/factory_pattern_classes/transport.dart';
import 'package:flutter/material.dart';
import 'package:factory_pattern/factory_pattern_classes/water_transport.dart';
import 'dart:developer';

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
  int _counter = 0;
  bool _isButtonDisabled = false;

  @override
  void initState() {
    _isButtonDisabled = false;
  }

  void _incrementCounter() {
    setState(() {
      _isButtonDisabled = (_isButtonDisabled) ? false : true;
      _counter++;
    });
  }

  Transport typeOfTransport = Transport();

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
                const Text('Welcome, select the country you want your cargo '
                    'to be shipped: '),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      typeOfTransport = Transport.factory(TypesOfTransport.railroadTransportType);
                    });
                  },
                  child: const Text('Russia'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      typeOfTransport = WaterTransport();
                      // typeOfTransport.getWaterTransportType();
                    });
                  },
                  child: const Text('USA'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      typeOfTransport = Transport.factory(TypesOfTransport.automobileTransportType);
                    });
                  },
                  child: const Text('Belarus'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      typeOfTransport = Transport.factory(TypesOfTransport.airTransportType);
                    });
                  },
                  child: const Text('Germany'),
                ),
                const SizedBox(height: 20.0,),
                Text(
                  // currentIngredients,
                  'Your Cargo will be shipped by:\n ${typeOfTransport.toString()}',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '$_counter',
                    ),
                    _buildCounterButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
  Widget _buildCounterButton() {
    return ElevatedButton(
      child: Text(
          _isButtonDisabled ? "Hold on..." : "Increment"
      ),
      onPressed: _isButtonDisabled ? null : _incrementCounter,
    );
  }
}
