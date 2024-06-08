import 'package:flutter/material.dart';
import './widget-booking//Upcomming.dart';
import 'widget-booking/completed.dart';
import 'widget-booking/canclled.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  int _select = 0;

  Widget build(BuildContext context) {
    List<Widget> _selectOption = <Widget>[
      Upcomming(),
      Comleted(),
      Cancelled(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookings"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    setState(() {
                      _select = 0;
                    });
                  },
                  child: Text("Upcomming")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _select = 1;
                    });
                  },
                  child: Text("Completed")),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _select = 2;
                    });
                  },
                  child: Text("Cancelled"))
            ],
          ),
        ),
      ),
      body: _selectOption.elementAt(_select),
    );
  }
}
