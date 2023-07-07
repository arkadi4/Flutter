import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png', ),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'germany.png', ),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'Cairo.png', ),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'Chicago.png', ),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'Seoul.png', ),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
              },
              title: Text(locations[index].location),
            ),
          );
        },
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter++;
      //     });
      //   },
      //   child: Text('counter is $counter'),
    );
  }
}
