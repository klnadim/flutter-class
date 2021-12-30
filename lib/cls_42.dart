import 'package:flutter/material.dart';

class DismissWidget extends StatefulWidget {
  const DismissWidget({Key? key}) : super(key: key);

  @override
  State<DismissWidget> createState() => _DismissWidgetState();
}

class _DismissWidgetState extends State<DismissWidget> {
  @override
  Widget build(BuildContext context) {
    var listItem = [
      "Apple",
      "Jack Fruit",
      "Papiya",
      "Orange",
    ];

    List list = List.generate(20, (index) => index);

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Dismissible(
              onDismissed: (value) {
                setState(() {
                  print(list);
                  list.remove(value);
                  print(list);
                });
              },
              background: Container(
                color: Colors.green,
              ),
              secondaryBackground: Container(
                color: Colors.blueGrey,
              ),
              confirmDismiss: (value) {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Delete"),
                      content: Text("Are You Sure to Drop .?"),
                      actionsAlignment: MainAxisAlignment.spaceBetween,
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Restored"),
                              ),
                            );
                          },
                          child: Text("No"),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Sucessfully Removed"),
                              ),
                            );
                            Navigator.of(context).pop(true);
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    );
                  },
                );
              },
              key: ValueKey(list[index]),
              child: ListTile(
                tileColor: Colors.lightBlue[100],
                title: Text("Item ${list[index]}"),
              ),
            ),
          );
        },
      ),
    );
  }
}
