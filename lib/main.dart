import 'package:firebase_flutter/model/channel.dart';
import 'package:firebase_flutter/page/channel_screen.dart';
import 'package:firebase_flutter/page/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Channel channel = new Channel(
      name: "hùng tt",
      avatar:
          'https://images.viblo.asia/avatar/ce902299-8119-4dec-a1b4-ec99d39147bf.jpg',
      message: "text message tự chế");
  final List<Channel> channels = [];

  @override
  Widget build(BuildContext context) {
    channels.add(channel);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        // home: Home(title: "notify page home"),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) =>
              HomeScreen(title: "notify page home"),
          ChannelScreen.routeName: (BuildContext context) =>
              ChannelScreen(channels: channels),
        });
  }
}
