import 'package:flutter/material.dart';
import 'package:swiper/ui/cards.dart';
import 'package:advanced_share/advanced_share.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
          iconSize: 50.0,
          fixedColor: Colors.grey,
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(Icons.flag, color: Colors.redAccent),
                title: new Text("Bookmark")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.comment,color: Colors.blueAccent,),
                title: new Text("Discuss")),
            new BottomNavigationBarItem(
                icon: new Icon(Icons.person, color: Colors.grey),
                title: new Text("You")),
          ]),
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          "swiper",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 50.00,
              fontWeight: FontWeight.w900,
              fontFamily: 'custom'),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(Icons.star_border, color: Colors.blueGrey),
          iconSize: 50.0,
          onPressed: () => debugPrint("oh yeah!"),
          alignment: Alignment.topCenter,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.share,
              color: Colors.amberAccent,
            ),
            onPressed: () => AdvancedShare.generic(
    msg: "hi dev! ",
    title: "Hey check out this cool new app!",
  ).then((response){
	print(response);
}),
            iconSize: 50.0,
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.lightGreenAccent,
        tooltip: 'Going Up!',
        child: new Icon(Icons.add),
      ),
      body: new Cards(),
    );
  }
}
