import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

// ignore: camel_case_types
class _settingsState extends State<settings> {
  var hght;
  var wdth;

  @override
  Widget build(BuildContext context) {
    hght = MediaQuery.of(context).size.height;
    wdth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: Container(
        height: hght,
        color: const Color(0xffE5E5E5),
        child: Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              ListTile(
                title: Text("Profile Settings"),
                leading: Icon(Icons.battery_full),
              ),
              ListTile(
                title: Text("Notifications"),
                leading: Icon(Icons.anchor),
              ),
              ListTile(
                title: Text("App Theme"),
                leading: Icon(Icons.access_alarm),
              ),
              ListTile(
                title: Text("Provacy Settings"),
                leading: Icon(Icons.ballot),
              )
            ],
          ),
        ),
      ),
    );
  }
}
