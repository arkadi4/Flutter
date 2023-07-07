import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  // final Quote quote;
  // QuoteCard({ required this.quote });




  final Quote quote;
  final void Function()? delete;
  // Quote(author: '111', text: 'aaa')
  QuoteCard({ required this.quote, required this.delete });

  // QuoteCard({  quote }) {
  //   this.quote = quote;
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 20.0,),
            TextButton.icon(
              onPressed: delete,
              // child: Text('delete quote'),
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
