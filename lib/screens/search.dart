import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Map<String, String>> _posts = [
    {'imageUrl': 'assets/postt9.jpg', },
    {'imageUrl': 'assets/postt8.jpg', },
    {'imageUrl': 'assets/postt7.jpg', },
    {'imageUrl': 'assets/postt6.jpg', },
    {'imageUrl': 'assets/postt5.jpg', },
    {'imageUrl': 'assets/postt9.jpg', },
    {'imageUrl': 'assets/postt8.jpg', },
    {'imageUrl': 'assets/postt7.jpg', },
    {'imageUrl': 'assets/postt6.jpg', },
    {'imageUrl': 'assets/postt5.jpg', },
    {'imageUrl': 'assets/postt9.jpg', },
    {'imageUrl': 'assets/postt8.jpg', },
    {'imageUrl': 'assets/postt7.jpg', },
    {'imageUrl': 'assets/postt6.jpg', },
    {'imageUrl': 'assets/postt5.jpg', },
    {'imageUrl': 'assets/postt9.jpg', },
    {'imageUrl': 'assets/postt8.jpg', },
    {'imageUrl': 'assets/postt7.jpg', },
    {'imageUrl': 'assets/postt6.jpg', },
    {'imageUrl': 'assets/postt5.jpg', },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                  childAspectRatio: 0.8, // Adjust aspect ratio if needed
                ),
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  final post = _posts[index];
                  return GestureDetector(
                    onTap: () {
                      // Handle post tap, e.g., navigate to a detail page
                    },
                    child: GridTile(
                      child: Image.asset(
                        post['imageUrl']!,
                        fit: BoxFit.cover,
                      ),
                      footer: GridTileBar(
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
