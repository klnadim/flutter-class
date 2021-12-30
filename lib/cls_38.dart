import 'package:flutter/material.dart';

class ClassThirtyEight extends StatefulWidget {
  // const ClassThirtyEight({Key? key}) : super(key: key);
  @override
  State<ClassThirtyEight> createState() => _ClassThirtyEightState();
}

class _ClassThirtyEightState extends State<ClassThirtyEight> {
  var v_sw = false;
  var vChbx = false;

  Color bgColor = Colors.amber;

  getDataFromBool(value) {
    v_sw = value;
    if (v_sw == true) {
      bgColor = Colors.indigo;
    } else {
      bgColor = Colors.amber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Container(
        child: Column(children: [
          Switch(
              // thumbColor: MaterialStateProperty.all(Colors.black),
              // trackColor: MaterialStateProperty.all(Colors.amber),
              activeTrackColor: Colors.red,
              inactiveTrackColor: Colors.green,
              // hoverColor: Colors.tealAccent,
              splashRadius: 50,
              value: v_sw,
              onChanged: (value) {
                setState(() {
                  getDataFromBool(value);
                });
              }),
          Checkbox(
              fillColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
              value: vChbx,
              // tristate: true,
              shape: CircleBorder(side: BorderSide.none),
              onChanged: (valueCheck) {
                setState(() {
                  vChbx = valueCheck!;
                });
              })
        ]),
      ),
    );
  }
}
