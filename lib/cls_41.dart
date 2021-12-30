import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurveNavigationBar extends StatefulWidget {
  CurveNavigationBar({Key? key}) : super(key: key);

  @override
  State<CurveNavigationBar> createState() => _CurveNavigationBarState();
}

class _CurveNavigationBarState extends State<CurveNavigationBar> {
  final pageList = [const HomePageNav(), const SupportNav(), const UsersNav()];

  var index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curve Navigation Bar"),
      ),
      body: pageList[index],
      // body: Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   child: Image.network(
      //     "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Our_Bangladesh.jpg/1024px-Our_Bangladesh.jpg",
      //     fit: BoxFit.cover,
      //   ),
      // ),
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        child: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 250),
          animationCurve: Curves.elasticInOut,
          buttonBackgroundColor: Colors.green,
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          height: 55,
          index: index,
          items: [
            FaIcon(FontAwesomeIcons.user),
            FaIcon(FontAwesomeIcons.home),
            FaIcon(FontAwesomeIcons.headset),
          ],
          onTap: (value) {
            setState(() {
              index = value;
              print(index);
            });
          },
        ),
      ),
    );
  }
}

class HomePageNav extends StatelessWidget {
  const HomePageNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Text("HomePage"),
    );
  }
}

class SupportNav extends StatelessWidget {
  const SupportNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Text("Support Page"),
    );
  }
}

class UsersNav extends StatelessWidget {
  const UsersNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Text("Users Page"),
    );
  }
}
