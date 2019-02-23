import 'package:flutter/material.dart';

class RecipesListOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Declare some constants
    final double myTextSize = 40.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        new TextStyle(color: Colors.white, fontSize: myTextSize);

    var column = new Column(
      // Makes the cards stretch in horizontal axis
      
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new MyCard(
            title: new Text(
              "Breakfast",
              style: myTextStyle,
            ),
            icon:
                new Icon(Icons.favorite, size: myIconSize, color: Colors.red)),
        new MyCard(
            title: new Text(
              "Soup",
              style: myTextStyle,
            ),
            icon: new Icon(Icons.alarm, size: myIconSize, color: Colors.blue)),
        new MyCard(
            title: new Text(
              "Main Course",
              style: myTextStyle,
            ),
            icon: new Icon(Icons.airport_shuttle,
                size: myIconSize, color: Colors.amber)),
        new MyCard(
            title: new Text(
              "Desert",
              style: myTextStyle,
            ),
            image: Image.asset('assets/boat.jpg'),
            icon: new Icon(Icons.done, size: myIconSize, color: Colors.green)),
        new MyCard(
            title: new Text(
              "Appetiser",
              style: myTextStyle,
            ),
            image: Image.asset('assets/boat.jpg'),
            icon: new Icon(Icons.done, size: myIconSize, color: Colors.green)),
        new MyCard(
            title: new Text(
              "Snacks",
              style: myTextStyle,
            ),
            image: Image.asset('assets/boat.jpg'),
            icon: new Icon(Icons.done, size: myIconSize, color: Colors.green)),
      ],
    );

    return new Scaffold(
      body: new Container(
        // Sets the padding in the main container
        padding: const EdgeInsets.only(bottom: 2.0),
        child: new Center(
          child: new SingleChildScrollView(child: column),
        ),
      ),
    );
  }
}

// Create a reusable stateless widget

class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;
  final Image image;
  

  // Constructor. {} here denote that they are optional values i.e you can use as: new MyCard()
  MyCard({this.title, this.icon, this.image});

  Widget background = new Container(
    child: Image.asset(
      'assets/reflection.jpg',
      fit: BoxFit.cover,
    ),
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new Container(
      // height: deviceSize *,
      padding: const EdgeInsets.only(bottom: 0.0),
      child: new Card(
        child: new Stack(
          children: <Widget>[
            Positioned.fill(child: Opacity(opacity: 0.8, child: background)),
            Center(child: title),
          ],
        ),
      ),
    );
  }
/* 
    static final myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle = new TextStyle(color: Colors.white, fontSize: myTextSize);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    
    return Column(
      children: <Widget>[
        
        _buildRow("Breakfast", Colors.black),
        _buildRow("Soup", Colors.red),
        _buildRow("Main Course", Colors.black),
        _buildRow("Desert", Colors.red),
        _buildRow("Appetiser", Colors.black),
        _buildRow("Snacks", Colors.red),
        _buildRow("Drinks", Colors.black),
      ],
    );
  }

  Container _buildRow(String recipeType, Color thisColor) {

    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[Title: new Text(), this.icon],
          ),
        ),
      ),
    );
    /* return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          color: thisColor,
          padding: EdgeInsets.all(16.0),
          child: Text("$recipeType", style: myTextStyle),
        ),
      ],
    ); */
  } */
}
