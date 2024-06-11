import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_ui/widget/widget-dashboard/Glamour.dart';
import './widget-dashboard/notif.dart';
import '../model//ImgStory.dart';
import 'package:image/image.dart' as img;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
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
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notif()));
                });
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
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
                      hintText: "Search"),
                )),
            SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Container(
                          width: 391,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/barber1.jpg'),
                                  fit: BoxFit.cover))),
                      Container(
                        width: 391,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black.withOpacity(
                              0.5), // Menambahkan warna hitam transparan
                          backgroundBlendMode:
                              BlendMode.darken, // Mengatur mode blend
                        ),
                      ),
                      Positioned(
                          top: 10,
                          width: 100,
                          left: 10,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    "Limited time!",
                                    style: TextStyle(
                                        fontSize: 10, fontFamily: 'Raleway'),
                                  ),
                                ),
                              ))),
                      Positioned(
                          top: 50,
                          left: 10,
                          child: Text(
                            "Special Discount",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                      Positioned(
                        top: 70,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Up to",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "40%",
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.amber),
                                ))
                          ],
                        ),
                      ),
                      Positioned(
                          top: 100,
                          width: 50,
                          height: 25,
                          left: 320,
                          child: ElevatedButton(
                            onPressed: () {
                              //ddd
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              elevation: 10,
                            ),
                            child: Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "Claim",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10),
                                )),
                          ))
                    ]),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: Stack(children: <Widget>[
                          Container(
                              width: 391,
                              height: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/barber1.jpg'),
                                      fit: BoxFit.cover))),
                          Container(
                            width: 391,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(
                                  0.5), // Menambahkan warna hitam transparan
                              backgroundBlendMode:
                                  BlendMode.darken, // Mengatur mode blend
                            ),
                          ),
                          Positioned(
                              top: 10,
                              width: 100,
                              left: 10,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Center(
                                      child: Text(
                                        "Limited time!",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'Raleway'),
                                      ),
                                    ),
                                  ))),
                          Positioned(
                              top: 50,
                              left: 10,
                              child: Text(
                                "Special Discount",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                          Positioned(
                            top: 70,
                            left: 10,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Up to",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      "40%",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.amber),
                                    ))
                              ],
                            ),
                          ),
                          Positioned(
                              top: 100,
                              width: 50,
                              height: 25,
                              left: 320,
                              child: ElevatedButton(
                                onPressed: () {
                                  //ddd
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  elevation: 10,
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "Claim",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    )),
                              ))
                        ]))
                  ],
                )),
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
                                width: 90,
                                height: 90,
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
                                    "HairCut",
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
                          width: 90,
                          height: 90,
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
                              "Make Up",
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
                          width: 90,
                          height: 90,
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
                              "Shaving",
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
                          width: 90,
                          height: 90,
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
                              "Massage",
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
                          width: 90,
                          height: 90,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GlamourAcount()));
                          });
                        },
                        child: Container(
                          width: 250,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/bg1.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                top: 130,
                                left: 15,
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "Glamour Haven",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 200,
                                child: Container(
                                    padding: EdgeInsets.all(0),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 250,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/bg2.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              top: 130,
                              left: 15,
                              child: Container(
                                child: Text(
                                  "Barber Co",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Positioned(
                            top: 10,
                            left: 200,
                            child: Container(
                                padding: EdgeInsets.all(0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      width: 250,
                      height: 180,
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
                              top: 130,
                              left: 15,
                              child: Container(
                                child: Text(
                                  "Grooming Lounge",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          Positioned(
                            top: 10,
                            left: 200,
                            child: Container(
                                padding: EdgeInsets.all(0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
