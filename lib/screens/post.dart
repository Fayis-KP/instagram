import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  // List of image paths for the grid
  final List<String> _imagePaths = [
    'assets/postt1.jpg',
    'assets/postt2.jpg',
    'assets/post3.jpg',
    'assets/post4.jpg',
    'assets/post5.jpg',
    'assets/post6.jpg',
    'assets/postt3.jpg',
    'assets/postt4.jpg',
    'assets/postt5.jpg',
    'assets/postt6.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Close the page
          },
        ),
        title: Text("New Post", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {
              // Handle the "Next" action
            },
            child: Text("Next", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(
                  "assets/postt5.jpg",
                  fit: BoxFit.cover, // Ensure the image covers the container while maintaining its aspect ratio
                ),
              ),
              SizedBox(height: 22), // Add spacing between the top image and the grid
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                      ],
                    ),
                    // Add space between text and arrow
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(height: 12), // Add spacing between the "Recent" text and the grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Number of images per row
                    crossAxisSpacing: 2.0, // Spacing between columns
                    mainAxisSpacing: 2.0, // Spacing between rows
                  ),
                  itemCount: _imagePaths.length, // Number of images in the grid
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        _imagePaths[index], // Image for each grid item
                        fit: BoxFit.cover, // Ensure the image scales to cover the container
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
