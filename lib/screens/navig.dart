import 'package:flutter/material.dart';
import 'package:instagram/screens/home.dart'; // Import your actual Home screen
import 'package:instagram/screens/post.dart';
import 'package:instagram/screens/search.dart'; // Import your Search screen
import 'package:instagram/screens/reels.dart'; // Import your Reels screen
import 'package:instagram/screens/profile.dart'; // Import your Profile screen

class Navig extends StatefulWidget {
  const Navig({super.key});

  @override
  State<Navig> createState() => _NavigState();
}

class _NavigState extends State<Navig> {
  int _selectedIndex = 0;

  // List of pages for the BottomNavigationBar
  final List<Widget> _pages = [
    Home(),    // Home page
    Search(),  // Search page
    Post(),    // Post page
    Reels(),   // Reels page
    Profile(), // Profile page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
