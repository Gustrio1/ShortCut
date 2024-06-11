import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

class GlamourAcount extends StatefulWidget {
  const GlamourAcount({Key? key}) : super(key: key);

  @override
  State<GlamourAcount> createState() => _GlamourAcountState();
}

class _GlamourAcountState extends State<GlamourAcount> {
  double appBarHeight = 80; // Default height of the AppBar
  int _select = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        // Konten utama body
        // Center(
        //   child: Text("Main content goes here"),
        // ),
        // AppBar
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: PreferredSize(
            preferredSize: Size.fromHeight(appBarHeight),
            child: AppBar(
              flexibleSpace: Container(
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Positioned widget di atas AppBar
        Positioned(
            top: appBarHeight +
                70, // Atur posisi vertikal agar berada di atas AppBar
            left: 0,
            right: 0,
            child: Card(
              margin: EdgeInsets.zero,
              child: SizedBox(
                  width: screenSize
                      .width, // Memastikan lebar Card sesuai dengan lebar layar
                  height: screenSize.height - appBarHeight - 50,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Glamour Heaven",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Haircuts, Maku Up, Shaving, Massage",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_pin,
                                  size: 20,
                                ),
                                Text(
                                  "Kedaton",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.access_time_filled,
                                  size: 20,
                                ),
                                Text(
                                  "15 min, 1.5km, Mon Sun | 11 am - 11pm",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.blue[400],
                                        ),
                                        child: Icon(Linecons.globe),
                                      ),
                                    ),
                                    Text("Website")
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.blue[400],
                                        ),
                                        child: Icon(Linecons.globe),
                                      ),
                                    ),
                                    Text("Website")
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.blue[400],
                                        ),
                                        child: Icon(Linecons.globe),
                                      ),
                                    ),
                                    Text("Website")
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.blue[400],
                                        ),
                                        child: Icon(Linecons.globe),
                                      ),
                                    ),
                                    Text("Website")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                                height: 50, // Tinggi ListView
                                child: ListView(
                                  scrollDirection:
                                      Axis.horizontal, // Arah scroll horizontal
                                  children: <Widget>[
                                    _buildMenuItem("Services"),
                                    _buildMenuItem("Specials"),
                                    _buildMenuItem("Packages"),
                                    _buildMenuItem("Gallery"),
                                    _buildMenuItem("Other"),
                                  ],
                                )),
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                  )),
            )),
      ]),
    );
  }
}

Widget _buildMenuItem(String itemName) {
  return Container(
    child: Column(
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            itemName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
