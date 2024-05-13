import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';

void main() {
  runApp(MaterialApp(
    home: FullScreenImage(
      profileImage: 'assets/images/profile.jpg',
      imagePath: "username",
    ),
  ));
}

class FullScreenImage extends StatelessWidget {
  final String profileImage;
  final String imagePath;

  const FullScreenImage({required this.imagePath, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/row1.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity),
              Positioned(
                  top: 40,
                  left: 16,
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(profileImage),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Wetboxment",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Komentar",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12)),
                    )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.telegram_outlined,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
