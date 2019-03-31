import 'package:flutter/material.dart';
import 'package:swiper/utils/text_builder.dart';

class Cards extends StatefulWidget {

  
  @override
  State<Cards> createState() {
    return CardView();
  }
}

class CardView extends State<Cards> {
  var items = textGen();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: _buildCards(context),
    ));
  }

  List<Widget> _buildCards(BuildContext context) {
    var cards = List<Widget>();
    for (String item in items) {
      cards.add(Dismissible(
          key: Key(item),
          background: Container(
            alignment: Alignment(0.0, 0.0),
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('NEXT ',
                    style: Theme
                        .of(context)
                        .primaryTextTheme
                        .subhead
                        .copyWith(color: Colors.white)),
                Icon(
                  Icons.dehaze,
                  size: 50.00,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          direction: DismissDirection.horizontal,
          child: Container(
            child : SingleChildScrollView(child: Text(item , style : TextStyle(fontSize: 40.00, color:Colors.white ,fontStyle: FontStyle.normal, fontFamily: 'custom2' ), textAlign: TextAlign.center,)),
            margin: new EdgeInsets.all(40.0),
            alignment: Alignment(0.0, 0.0),
            decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50.00),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 9.0,
                  ),
                ]),
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.endToStart) {
              setState(() {
                items.remove(item);

              });
              debugPrint("!OK");
            } else if (direction == DismissDirection.startToEnd) {
              setState(() {
                items.remove(item);
              });
              debugPrint("OK");
            }
          }));
    }
    return cards;
  }
}
