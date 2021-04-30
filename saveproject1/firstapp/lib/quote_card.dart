import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote q;
  QuoteCard ({this.q});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(q.text,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.amber,
                  // fontFamily:  need to extract
                ),


              ),
              SizedBox(height:5.0),
              Text(q.author,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.amber,
                  // fontFamily:  need to extract
                ),


              ),
              SizedBox( height: 8.0),

              FlatButton.icon(
                onPressed:delete,
                label :Text('delete quote'),
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        )
    );
  }
}