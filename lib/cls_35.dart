import 'package:flutter/material.dart';

class ListViewBuilerWithTile extends StatelessWidget {
  var fruitsList = ["Mango", "Banana", "Jack-Fruit", "Papiya", "Orange"];
  var fruitsImage = [
    "https://previews.123rf.com/images/volff/volff1603/volff160300288/54522547-mango-cubes-and-mango-fruit-isolated-on-a-white-background-.jpg",
    // "https://www.feedipedia.org/sites/default/files/styles/standard__640x480_/public/images/banana_cavendish.jpg",
    // "https://image.shutterstock.com/image-photo/jackfruit-isolated-on-white-background-600w-1597185463.jpg",
    // "https://media.gettyimages.com/photos/papaya-picture-id914617584?s=2048x2048",
    // "https://thumbs.dreamstime.com/z/orange-fruit-green-leaves-isolated-white-background-clipping-path-full-depth-field-fresh-177726692.jpg"
  ];

  // const ListViewBuilerWithTile({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar:
          AppBar(title: Text("List Items"), backgroundColor: Colors.black26),
      body: ListView.builder(
        itemCount: fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              tileColor: Colors.amber[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                backgroundImage: AssetImage("images/cat.jpeg"),
              ),
              onTap: () {
                print(index);
              },
              title: Text(fruitsList[index]),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right)),
            ),
          );
        },
      ),
    );
  }
}
