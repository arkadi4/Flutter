import 'package:factory_pattern/factory_pattern_classes/transport.dart';
import 'package:flutter/material.dart';

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

  var typeOfTransport;
  bool isChangeWaterTypeButtonEnabled = false;
  bool isChangeRailroadTypeButtonEnabled = false;
  bool isChangeAirTypeFirstButtonEnabled = false;
  bool isChangeAirTypeSecondButtonEnabled = false;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome, choose the type of transport you '
                    'want to create '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          typeOfTransport = Transport.factory(TypesOfTransport.railroadTransportType);
                          isChangeWaterTypeButtonEnabled = false;
                          isChangeRailroadTypeButtonEnabled = true;
                          isChangeAirTypeFirstButtonEnabled = false;
                          isChangeAirTypeSecondButtonEnabled = false;
                        });
                      },
                      child: const Text('Railroad'),
                    ),
                    ElevatedButton(
                      onPressed:  (isChangeRailroadTypeButtonEnabled)
                      ? () {
                        setState(() {
                          typeOfTransport.changeTrackArrangement();
                        });
                      }
                      : null,
                      child: Text('Change Railroad transport\n track arrangement'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          typeOfTransport = Transport.factory(TypesOfTransport.waterTransportType);
                          isChangeWaterTypeButtonEnabled = true;
                          isChangeRailroadTypeButtonEnabled = false;
                          isChangeAirTypeFirstButtonEnabled = false;
                          isChangeAirTypeSecondButtonEnabled = false;
                        });
                      },
                      child: const Text('Water'),
                    ),
                    ElevatedButton(
                      onPressed:  (isChangeWaterTypeButtonEnabled)
                      ? () {
                        setState(() {
                          typeOfTransport.changeWaterTransportType();
                        });
                      }
                      : null,
                      child: Text('Change Water transport type '),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      typeOfTransport = Transport.factory(TypesOfTransport.automobileTransportType);
                    });
                  },
                  child: const Text('Automobile'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          typeOfTransport = Transport.factory(TypesOfTransport.airTransportType);
                          isChangeWaterTypeButtonEnabled = false;
                          isChangeRailroadTypeButtonEnabled = false;
                          isChangeAirTypeFirstButtonEnabled = true;
                          isChangeAirTypeSecondButtonEnabled = true;
                        });
                      },
                      child: const Text('Air'),
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed:  (isChangeAirTypeFirstButtonEnabled)
                              ? () {
                            setState(() {
                              typeOfTransport.changeAirTransportTypeByRange();
                            });
                          }
                              : null,
                          child: Text('Change Air transport type\n by range of flight'),
                        ),
                        ElevatedButton(
                          onPressed:  (isChangeAirTypeSecondButtonEnabled)
                              ? () {
                            setState(() {
                              typeOfTransport.changeAirTransportTypeByPurpose();
                            });
                          }
                              : null,
                          child: Text('Change Air transport type\n (passenger or cargo)'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20.0,),
                Text(
                  // currentIngredients,
                  'Your created :\n ${  typeOfTransport.toString()}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
