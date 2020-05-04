import 'package:flutter/material.dart';

void main() => runApp(FriendlyChatApp());

class FriendlyChatApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IndieGossip',
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget{
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen>{
  final TextEditingController _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndieGossip'),
      ),
    );
  }
  Widget _buildTextComposer(){
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: const InputDecoration.collapsed(hintText: 'Send a message'),
      ),
    );
  }

  void _handleSubmitted(String text){
    _textController.clear();
  }
}