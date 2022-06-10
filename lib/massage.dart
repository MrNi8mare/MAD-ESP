import 'package:flutter/material.dart';
import 'package:lossfound/home_page.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class massage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<massage> {
  // ignore: prefer_typing_uninitialized_variables
  var hght;
  // ignore: prefer_typing_uninitialized_variables
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
        color: const Color(0xffE5E5E5),
        child: Expanded(
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
                        width: wdth / 4,
                      ),
                      const Text(
                        "Messages",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 15,
                    ),
                    child: SizedBox(
                      height: (hght / 9) + 15,
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/image.jpg"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Ahmed Hassan",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Thanks for approaching :)",
                                              style: TextStyle(
                                                  color: Color(0xff7b7b7b),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 15,
                    ),
                    child: SizedBox(
                      height: (hght / 9) + 15,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/hamza.png"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Hamza Amjad",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Okay Thanks :)",
                                              style: TextStyle(
                                                  color: Color(0xff7b7b7b),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 15,
                    ),
                    child: SizedBox(
                      height: (hght / 9) + 15,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("images/zain.png"),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Zain Javed",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        width: wdth - 162,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Means a lot",
                                              style: TextStyle(
                                                  color: Color(0xff7b7b7b),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
