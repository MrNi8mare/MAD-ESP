import 'package:flutter/material.dart';

import 'chat_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("           Loss & Found"),
          backgroundColor: Colors.teal,
        ),
        body: new ChatScreen());
  }
}
