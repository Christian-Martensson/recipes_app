import 'package:flutter/material.dart';

class RecipesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return ListView.builder(
      itemCount: _myMenuObjects.length,
      // the height of each item, scales to the size of the device.
      itemExtent: deviceHeight * 0.145,
      itemBuilder: _listItemBuilder,
    );
  }

  // Builds a card with a stack containing the image and text of the menuObject.
  Widget _listItemBuilder(BuildContext context, int index) {
    final double myTextSize = 25.0;
    //final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        new TextStyle(color: Colors.white, fontSize: myTextSize);
    return Material(
      child: Card(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
                child: Opacity(
              opacity: 0.8,
              child: Ink.image(
                image: AssetImage(
                  _myMenuObjects[index].imageLocation,
                ),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                ),
              ),
            )),
            Center(
              child: Text(
                _myMenuObjects[index].name,
                style: myTextStyle,
              ),
            ),
          ],
        ),
        semanticContainer: true,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 5,
      ),
    );
  }
}

//List of all menu objects
final List<MenuObject> _myMenuObjects = <MenuObject>[
  MenuObject(
    name: "Breakfast",
    imageLocation: 'assets/breakfast.jpg',
  ),
  MenuObject(
    name: "Soup",
    imageLocation: 'assets/soup.jpg',
  ),
  MenuObject(
    name: "Main Course",
    imageLocation: 'assets/breakfast.jpg',
  ),
  MenuObject(
    name: "Desert",
    imageLocation: 'assets/soup.jpg',
  ),
  MenuObject(
    name: "Appetiser",
    imageLocation: 'assets/breakfast.jpg',
  ),
  MenuObject(
    name: "Snacks",
    imageLocation: 'assets/soup.jpg',
  ),
];

// Class for each MenuObject
class MenuObject {
  MenuObject({this.name, this.imageLocation});
  final String name;
  final String imageLocation;
}
