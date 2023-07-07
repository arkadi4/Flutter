// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: '111', text: 'aaa'),
    Quote(author: '222', text: 'bbb'),
    Quote(author: '333', text: 'ccc'),
    // 'first string',
    // 'second string',
    // 'third string',
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote, delete: delete,);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('appbar'),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
          ); //Text('${quote.text}, ${quote.author}');
        }).toList(),
      ),
    );
  }
}

