import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerClass extends StatelessWidget {
  const DrawerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.blue]),
          ),
        ),
      ),
      body: Container(
        child: Text("Hello"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black26),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.wccftech.com/wp-content/uploads/2021/09/gta-san-andreas-overhaul-mod-740x469.jpg"),
              ),
              currentAccountPictureSize: Size.square(70),
              accountName: Text(
                "Md Nadim Alam Soikat",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("klnadim27@gmail.com"),
              onDetailsPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),

              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.folder),
                title: const Text(
                  "My Files",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
                // focusColor: Colors.green,
                selected: true,

                // selectedTileColor: Colors.blue,
              ),

              // child: Row(
              //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     FaIcon(FontAwesomeIcons.folder),
              //     SizedBox(
              //       width: 35,
              //     ),
              //     Text(
              //       "My Files",
              //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              //     ),
              //   ],
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.userFriends),
                title: Text(
                  "Share With Me",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.clock),
                title: Text(
                  "Recent",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.trash),
                title: Text(
                  "Trash",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Divider(
              thickness: 2,
              height: 3,
            ),
            ListTile(
              leading: Text(
                "Lables",
                style: TextStyle(
                    color: Colors.grey[400], fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.solidBookmark),
                title: Text(
                  "Family",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(),
    );
  }
}
