import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:
      //   Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('hello, row'),
      //     TextButton(
      //       onPressed: () {},
      //       child: Text('row button'),
      //       style: TextButton.styleFrom(
      //         foregroundColor: Colors.red,
      //         backgroundColor: Colors.amber,
      //       ),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(50.0),
      //       child: Text('inside container'),
      //     )
      //   ],
      // ),
      Column(
        children: [
          Expanded(child: Image.asset('assets/afonya.jpg')),
          TextButton(
            onPressed: () {},
            child: Text('row button'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.red,
              backgroundColor: Colors.amber,
            ),
          ),
          Text('hello, row'),
          Expanded(
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(50.0),
              child: Text('inside container'),
            ),
          )
        ],
      ),

      //   Padding(
      //   padding: EdgeInsets.all(50),
      //   child: Text('padding text'),
      // ),
      //   Container(
      //   color: Colors.grey[400],
      //   child: Text('container text'),
      //   // padding: EdgeInsets.all(20.0),
      //   padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
      // ),

        // Center(


        // child: IconButton(
        //   onPressed: () {},
        //   icon: Icon(Icons.face),
        // ),
        // child: ElevatedButton.icon(onPressed: () {},
        //     icon: Icon(Icons.mail), label: Text('mail me'),)
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('console click');
        //   },
        //   child: Text('elevatad button')
        // ),
        // child: Icon(
        //   Icons.account_box,
        //   size: 50.0,
        // ),
        // child: Text(
        //   'hello ninjas',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey[800],
        //     fontFamily: 'IndieFlower',
        //   ),
        // ),
        // child: Image(
        //   image: NetworkImage('https://wl-adme.cf.tsp.li/resize/728x/webp/
        //   2a2/ccc/83882a594f9652f25723e56ce0.jpg.webp'),
        // ),
        // child: Image(
        //   image: AssetImage('assets/afonya.jpg'),
        // ),
      //),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
      ),
    );
  }
}
