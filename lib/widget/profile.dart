import 'package:flutter/material.dart';

class Acount extends StatefulWidget {
  const Acount({super.key});

  @override
  State<Acount> createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chet"),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: 500, // Lebar kartu
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.album),
                      title: Text('Judul Kartu'),
                      subtitle: Text('Deskripsi kartu'),
                    ),
                  ],
                ), // Penutup untuk Column
              ), // Penutup untuk Card
            ),
          ) // Penutup untuk SizedBox
        ],
      ),
    );
  }
}
