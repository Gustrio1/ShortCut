import 'package:flutter/material.dart';

class Comleted extends StatefulWidget {
  const Comleted({super.key});

  @override
  State<Comleted> createState() => _ComletedState();
}

class _ComletedState extends State<Comleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
              child: Card(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.person_sharp,
                      size: 70,
                    ),
                    title: Text(
                      "Glamour Haven",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          size: 20.0,
                        ),
                        SizedBox(width: 4.0),
                        Text("Location")
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(20),
                                minimumSize: Size(300, 30)),
                            onPressed: () {},
                            child: Text("View E-Receipt"))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
