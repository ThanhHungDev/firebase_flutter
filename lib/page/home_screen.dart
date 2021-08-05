import 'package:firebase_flutter/model/auth.dart';
import 'package:firebase_flutter/page/channel_screen.dart';
import 'package:firebase_flutter/service/api.auth.dart';
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
        body: FutureBuilder(
          future: getAuth(null),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('có lỗi rồi' + snapshot.error.toString());
            } else if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.data != null) {
              Auth auth = snapshot.data as Auth;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text('dữ liệu email nè :' + auth.email),
                    ),
                    Center(
                      child: ElevatedButton(
                          child: Text('To ChannelScreen'),
                          onPressed: () => Navigator.of(context)
                              .pushNamed(ChannelScreen.routeName)),
                    ),
                  ],
                ),
              );
            }
            return Text('có lỗi rồi');
          },
        ));
  }
}
