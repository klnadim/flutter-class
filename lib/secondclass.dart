import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  Widget colorsShow(@required String? colorName, Color? color) {
    return Container(
      child: Text(colorName!),
      height: 150,
      width: 150,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page."),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.amber[800],
          foregroundColor: Colors.black,
          hoverColor: Colors.blueGrey,
          elevation: 20,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 120,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 120,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 120,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
