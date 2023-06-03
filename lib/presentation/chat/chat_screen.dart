import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/6/65/Kurzgesagt.png'),),
        ),
        title: const Text('Kurzgesagt'),
      ),
    );
  }
}
