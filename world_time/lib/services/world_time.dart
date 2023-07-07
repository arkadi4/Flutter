import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location = '';
  String time = '';
  String flag = '';
  String url = '';
  bool isDayTime = true;

  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      // print('data - $data');
      String dateTime = data['datetime'];
      String offSet = data['utc_offset'].substring(1, 3);
      // print(dateTime);
      // print(offSet);

      DateTime now = DateTime.parse(dateTime);
      // print('now - $now');
      now = now.add(Duration(hours: int.parse(offSet)));
      // print(now);

      // time = now.toString();
      isDayTime = (now.hour > 6 && now.hour < 20) ? (true) : (false);
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('error: $e');
    }


  }
}


// instance.getTime();

// Response response = await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
// // print(response.body);
// Map data = jsonDecode(response.body);
// print('data - $data');

// String username = await Future.delayed(Duration(seconds: 2), () {
//   // print('1 async duration futue');
//   return '1 async function';
// });
// String bio = await Future.delayed(Duration(seconds: 2), () {
//   return ('2 async duration futue');
// });
// print('sync code $username - $bio');
//