import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
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
      ),
    ));
  }
}
