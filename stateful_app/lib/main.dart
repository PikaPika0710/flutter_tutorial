import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            'Spread love everywhere you go. Let no one ever come to you without leaving happier.',
        author: 'Mother Teresa'),
    Quote(
        text:
            'When you reach the end of your rope, tie a knot in it and hang on.',
        author: 'Franklin D. Roosevelt'),
    Quote(
        text:
            'Always remember that you are absolutely unique. Just like everyone else.',
        author: 'Margaret Mead'),
    Quote(
        text:
            'Dont judge each day by the harvest you reap but by the seeds that you plant.',
        author: 'Robert Louis Stevenson'),
    Quote(
        text:
            'The future belongs to those who believe in the beauty of their dreams.',
        author: 'Eleanor Roosevelt'),
  ];
  Widget cardTemplate(quote) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          quote.text,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          quote.author,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 14.0,
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[600],
        appBar: AppBar(
          title: Center(child: Text('Awesome Quotes')),
          backgroundColor: Colors.red[400],
        ),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
                child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: quotes.map((quote) => cardTemplate(quote)).toList(),
            ))));
  }
}
