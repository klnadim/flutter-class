import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonClass extends StatelessWidget {
  const ButtonClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 90,
              // backgroundColor: Colors.amber,
              backgroundImage: AssetImage("images/cat.jpeg"),
              // backgroundImage: NetworkImage(
              //     "https://cdn.pixabay.com/photo/2017/01/17/14/44/pixabay-1987090_960_720.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(width: 2, color: Colors.white)),
                    // shape: ,
                    elevation: MaterialStateProperty.all(25),
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shadowColor: MaterialStateProperty.all(Colors.green),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                    )),
                onPressed: () {},
                child: Text("Submit")),
          ),
        ],
      ),
    );
  }
}
