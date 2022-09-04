import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            quote.author,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 12.0,
            ),
          ),
          ElevatedButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(
                Icons.cancel,
                color: Colors.red,
              ))
        ],
      ),
    ));
  }
}
