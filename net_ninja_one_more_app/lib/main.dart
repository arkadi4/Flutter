import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  // const NinjaCard({super.key});

  int ninjaLevel = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel +=1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/afonya.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[400],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'MARYA IVANOVNA',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 3.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 3.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'example@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}

// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
