import 'package:flutter/material.dart';
import 'package:singleton/sun_singleton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Singleton',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Singleton'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var sun1, sun2, comparison;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Push the button below to create the first Sun instance',
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                sun1 = Sun();
              });

            }, child: Text('sun1: $sun1') ),
            const Text(
              'Push the button below to create the second Sun instance',
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                sun2 = Sun();
              });

            }, child: Text('sun2: $sun2') ),
            const Text(
              'Push the button below to see if sun1 equals sun2',
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                comparison = sun1 == sun2;
              });

            }, child: Text('sun1 == sun2 ${comparison}') ),
          ],
        ),
      ),
    );
  }
}
