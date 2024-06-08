import 'package:flutter/material.dart';

class Upcomming extends StatefulWidget {
  const Upcomming({super.key});

  @override
  State<Upcomming> createState() => _UpcommingState();
}

class _UpcommingState extends State<Upcomming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      // Awal dari body: Row
      children: <Widget>[
        Expanded(
          child: Card(
            margin: EdgeInsets.all(20), // Menambahkan margin di sekitar kartu
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
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on_outlined,
                          size: 20.0, // Ukuran ikon lokasi
                        ),
                        SizedBox(
                            width:
                                4.0), // Menambahkan sedikit jarak antara ikon dan teks
                        Text('Location'),
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
                                  padding: EdgeInsets.all(10),
                                  minimumSize: Size(150, 20)),
                              onPressed: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(10),
                                  minimumSize: Size(150, 20)),
                              onPressed: () {},
                              child: Text(
                                "View E-receipt",
                                style: TextStyle(fontSize: 15),
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
