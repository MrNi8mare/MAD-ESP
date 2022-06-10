// ignore: file_names
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Search> {
  var hght;
  var wdth;

  @override
  Widget build(BuildContext context) {
    hght = MediaQuery.of(context).size.height;
    wdth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
          )),
      body: Container(
        height: hght,
        color: Color(0xffE5E5E5),
        child: ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
              height: 55,
              color: Colors.teal,
              child: Container(
                width: wdth,
                height: hght / 12,
                color: Colors.teal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    SizedBox(
                      width: wdth / 3.5,
                    ),
                    const Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        // shadows: <Shadow>[
                        //   Shadow(
                        //     offset: Offset(5.0, 5.0),
                        //     blurRadius: 3.0,
                        //     color: Colors.yellow,
                        //   ),
                        //   Shadow(
                        //     offset: Offset(5.0, 5.0),
                        //     blurRadius: 8.0,
                        //     color: Colors.red,
                        //   ),
                        // ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: (hght / 18) + 10,
                width: wdth / 1.3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 25.0,
                        ),
                        SizedBox(
                          width: wdth / 1.8 - 30,
                          child: const TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                bottom: 8.0,
                                left: 5,
                                top: 8.0,
                              ),
                              hintText: "Search",
                              hintStyle:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
