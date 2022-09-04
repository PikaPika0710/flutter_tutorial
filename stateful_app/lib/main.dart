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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(child: Text('Awesome Quotes')),
          backgroundColor: Colors.amber,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: quotes
                .map((quote) => Text(
                      '${quote.text} - ${quote.author}',
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ))
                .toList(),
          )),
        ));
  }
}
