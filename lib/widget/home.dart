import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:full_screen_image/full_screen_image.dart';
import '../model//ImgStory.dart';
import 'package:image/image.dart' as img;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
              child: Text("ShortCut",
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 4, 0),
              child: Icon(
                Icons.notifications,
                size: 40.0,
              ))
        ],
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      prefixIcon: Icon(Icons.search),
                      labelText: "Search"),
                )),
            SizedBox(height: 10),
            Container(
              width: 391,
              height: 150,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // warna shadow
                  spreadRadius: 2, // radius penyebaran
                  blurRadius: 5, // radius blur
                  offset: Offset(0, 5), // offset shadow
                )
              ], color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 17, 0, 0),
                        child: Text("Get Premium"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("Discount Up To 70%"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            print("object");
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          child: Text(
                              'View Detailis'), // Add a child Text widget with the label text
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                      child: Icon(
                        Icons.cut_outlined,
                        size: 70,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 10, 0),
                    child: Text("Sevices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text("See All"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullScreenImage(
                                      profileImage: 'assets/images/profile.jpg',
                                      imagePath: 'username',
                                    )));
                      },
                      child: Hero(
                        tag: 'full_Scrin',
                        child: Container(
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(70),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/row1.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  child: Text(
                                    "wteboxmen",
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                      )),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row2.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarberX",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row3.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarberY",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row4.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarberCty",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row5.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarLg",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row6.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarberPic",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/row7.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Text(
                              "BarberAs",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                      "Top Barbers",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Text("See All"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/bg1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          top: 70,
                          left: 25,
                          child: Container(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Hair Cut",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/bg2.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            top: 70,
                            left: 20,
                            child: Container(
                              child: Text(
                                "Hair Styling",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    width: 130,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/bg3.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                            top: 70,
                            left: 25,
                            child: Container(
                              child: Text(
                                "Premium Cut",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.account_circle,
                          size: 60,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Wteboxmen",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.music_note,
                                  size: 20,
                                ),
                                Text("Music")
                              ],
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/post1.jpg'),
                              fit: BoxFit.cover))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
