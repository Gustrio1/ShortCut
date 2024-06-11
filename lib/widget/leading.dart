import 'package:flutter/material.dart';
import 'package:test_ui/widget/booking.dart';
import 'package:test_ui/widget/home.dart';
import 'package:test_ui/widget/profile.dart';

void main() => runApp(LeadingHome());

class LeadingHome extends StatelessWidget {
  const LeadingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Leading(),
    );
  }
}

class Leading extends StatefulWidget {
  @override
  _LeadingState createState() => _LeadingState();
}

class _LeadingState extends State<Leading> {
  int _bottomNavCurrentIndex = 0; // Deklarasikan _bottomNavCurrentIndex di sini
  final List<Widget> _containers = [Home(), Booking(), Acount()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containers[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavCurrentIndex,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.book,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.book,
              color: Colors.grey,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.message,
              color: Colors.yellow,
            ),
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            label: 'Chet',
          ),
        ],
      ),
    );
  }
}
