import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/chat.dart';
import 'package:instagram/screens/fevorite.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> avatars = [
    {
      'name': 'Your Story',
      'image': 'assets/person.jpg',
    },
    {
      'name': 'User1',
      'image': 'assets/person1.jpg',
    },
    {
      'name': 'User2',
      'image': 'assets/person2.jpg',
    },
    {
      'name': 'User3',
      'image': 'assets/person3.jpg',
    },
    {
      'name': 'User4',
      'image': 'assets/person4.jpg',
    },
    {
      'name': 'User5',
      'image': 'assets/person5.jpg',
    },
    {
      'name': 'User6',
      'image': 'assets/person6.jpg',
    },
    {
      'name': 'User7',
      'image': 'assets/person1.jpg',
    },
    {
      'name': 'User8',
      'image': 'assets/person3.jpg',
    },
    {
      'name': 'User9',
      'image': 'assets/person2.jpg',
    },
  ];

  final List<Map<String, String>> posts = [
    {
      'userName': 'User1',
      'location': 'New York, USA',
      'image': 'assets/postt0.jpg',
      'likes': '120',
      'comments': '15',
    },
    {
      'userName': 'User2',
      'location': 'Paris, France',
      'image': 'assets/postt1.jpg',
      'likes': '210',
      'comments': '30',
    },
    {
      'userName': 'User3',
      'location': 'New York, USA',
      'image': 'assets/postt2.jpg',
      'likes': '120',
      'comments': '15',
    },
    {
      'userName': 'User4',
      'location': 'Paris, France',
      'image': 'assets/postt3.jpg',
      'likes': '210',
      'comments': '30',
    },
    {
      'userName': 'User5',
      'location': 'New York, USA',
      'image': 'assets/postt4.jpg',
      'likes': '120',
      'comments': '15',
    },
    {
      'userName': 'User6',
      'location': 'Paris, France',
      'image': 'assets/postt5.jpg',
      'likes': '210',
      'comments': '30',
    },
    // Add more posts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: "insta",
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fevorite()),
              );
            },
          ),
          SizedBox(width: 10),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.white,
            ),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat()),
              );
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            // Instagram Story Circles
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(avatars.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3.0,
                                  color: Colors.transparent, // Make the border color transparent
                                ),
                                gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.pink, Colors.purple],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),

                              child: ClipOval(
                                child: Image.asset(
                                  avatars[index]['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            if (index == 0) // Add plus icon only to the first avatar
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  width: 23,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          avatars[index]['name']!,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            // Instagram Posts
            Column(
              children: List.generate(posts.length, (index) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Post Header
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                avatars[index % avatars.length]['image']!,
                              ),
                              radius: 20,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  posts[index]['userName']!,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  posts[index]['location']!,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.more_vert, color: Colors.white),
                          ],
                        ),
                      ),
                      // Post Image
                      Image.asset(
                        posts[index]['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 470,
                      ),
                      SizedBox(height: 10,),
                      // Action Icons
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border, color: Colors.white),
                            SizedBox(width: 15),
                            Icon(Icons.comment, color: Colors.white),
                            SizedBox(width: 15),
                            Icon(Icons.send, color: Colors.white),
                            Spacer(),
                            Icon(Icons.bookmark_border, color: Colors.white),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      // Post Likes and Comments
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${posts[index]['likes']} likes',
                              style: TextStyle(color: Colors.white,),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'View all ${posts[index]['comments']} comments',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
