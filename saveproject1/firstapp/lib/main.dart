import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
     home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  //List<String> quotes=[' i  am the best',' i  am the hight','i am the great','the ant worker'];
  List<Quote> quotes=[
    Quote(author:'oscar1' ,text:' i  am the best' ),
    Quote(author:'oscar2' ,text: ' i  am the hight'),
    Quote(author:'oscar3' ,text: 'i am the great' )
  ];
  // Widget qTemplate(q)
  // {
  //   return QuoteCard();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('fresher quote'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Column(
        //children : quotes.map((q)=>Text(q)).toList(),
       children: quotes.map((q1)=>QuoteCard( q :q1 )).toList(),
      ),
    );
  }
}

