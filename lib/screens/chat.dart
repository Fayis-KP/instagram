import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<Map<String, String>> _chatData = [
    {"name": "John Doe", "lastMessage": "Hey there!", "profilePic": "assets/profile1.jpg"},
    {"name": "Jane Smith", "lastMessage": "How's it going?", "profilePic": "assets/profile2.jpg"},
    // Add more chat data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        actions: [
          IconButton(
            icon: Icon(Icons.build), // Tool icon
            onPressed: () {
              // Action for tool icon
            },
          ),
          IconButton(
            icon: Icon(Icons.message), // New message icon
            onPressed: () {
              // Action for new message icon
            },
          ),
          IconButton(
            icon: Icon(Icons.check_circle), // Selected icon
            onPressed: () {
              // Action for selected icon
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _chatData.length,
        itemBuilder: (context, index) {
          final chat = _chatData[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(chat['profilePic']!),
            ),
            title: Text(chat['name']!),
            subtitle: Text(chat['lastMessage']!),
            trailing: Icon(Icons.more_horiz),
            onTap: () {
              // Action when chat item is tapped
            },
          );
        },
      ),
    );
  }
}
