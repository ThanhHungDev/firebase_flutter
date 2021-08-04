import 'package:firebase_flutter/page/channel_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final String title;
  HomeScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Center(
                child: ElevatedButton(
                    child: Text('To ChannelScreen'),
                    onPressed: () => Navigator.of(context)
                        .pushNamed(ChannelScreen.routeName)),
              ),
            ],
          ),
        ));
  }
}
