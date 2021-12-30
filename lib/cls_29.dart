import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  // String name = "Md Nadim Alam Soikat";
  // var address = "East Madarbari,RabeyeaWorkshop,Chattagram";
  // var mobile = 01683916727;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Card(
          // clipBehavior: Clip.antiAlias,
          color: Colors.green,
          elevation: 15,
          shadowColor: Colors.blueAccent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              side: BorderSide(
                color: Colors.orange,
                width: 4,
              )),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 300,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.people),
                      ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Text(
                        "Name: Md Nadim Alam Soikat",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.home_filled),
                      ),
                      Text(
                          "Address: East Madarbari,Rabyeworkshop,\nChattagarm."),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.mail_outline),
                      ),
                      Text("Email: klnadim27@gmail.com"),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.facebook),
                      ),
                      Text("www.facebook.com/nadim554")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
