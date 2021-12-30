import 'package:flutter/material.dart';

class GradientClass extends StatefulWidget {
  const GradientClass({Key? key}) : super(key: key);

  @override
  _GradientClassState createState() => _GradientClassState();
}

class _GradientClassState extends State<GradientClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient Color Practice"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: SweepGradient(
                tileMode: TileMode.repeated,
                startAngle: 0.1,
                endAngle: 0.9,
                colors: [Colors.yellow, Colors.greenAccent, Colors.grey])),
        // decoration: BoxDecoration(
        //   gradient: RadialGradient(
        //     focal: Alignment.center,
        //     tileMode: TileMode.repeated,
        //     radius: 0.2,
        //     // focalRadius: 0.6,
        //     colors: [Colors.yellow, Colors.greenAccent, Colors.grey],
        //   ),
        // ),

        // decoration: BoxDecoration(gradient: LinearGradient(
        //     // begin: Alignment.topCenter,
        //     // end: Alignment.bottomCenter,
        //     colors: [Colors.greenAccent, Colors.grey])
      ),
    );
  }
}
