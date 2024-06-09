import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './widget-dashboard/notif.dart';
import '../model//ImgStory.dart';
//simport 'package:image/image.dart';
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
          IconButton(onPressed: (){
            setState(() {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Notif())
              );
            });
          }, icon: Icon(Icons.notifications, size: 30,))
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/barber1.jpg'),
                        fit: BoxFit.cover))

            ),
            Positioned(child: Text("test")),
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
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
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
                                    image: AssetImage('assets/images/bg1.jpg'),
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
                              child: Icon(Icons.favorite, color: Colors.red, size: 30,)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                child: Icon(Icons.favorite, color: Colors.red, size: 30,)
                            ),
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
                                child: Icon(Icons.favorite, color: Colors.red, size: 30,)
                            ),
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
