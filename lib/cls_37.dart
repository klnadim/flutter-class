import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigatorClass extends StatelessWidget {
  const NavigatorClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SecondClasNavigator();
                  },
                ));
              },
              child: Text("Click"))),
    );
  }
}

class SecondClasNavigator extends StatelessWidget {
  const SecondClasNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go Back")),
          Icon(FontAwesomeIcons.car)
        ],
      ),
    );
  }
}
