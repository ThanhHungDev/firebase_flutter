import 'package:firebase_flutter/model/channel.dart';
import 'package:flutter/material.dart';

class ChannelScreen extends StatelessWidget {
  static const routeName = '/channel';

  final List<Channel> channels;

  // In the constructor, require a Todo
  ChannelScreen({required this.channels});

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return Scaffold(
      appBar: AppBar(
        title: Text("list chat nè"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(' mình sẽ hiện thị list chat ở đay '),
      ),
    );
  }
}
