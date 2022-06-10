import 'package:flutter/material.dart';

// ignore: camel_case_types
class product extends StatefulWidget {
  const product({Key? key}) : super(key: key);

  @override
  _productState createState() => _productState();
}

var wdth;
var hght;

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    wdth = MediaQuery.of(context).size.width;
    hght = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: null,
      body: ListView.builder(
          // the number of items in the list
          itemCount: 1,

          // display each item of the product list
          itemBuilder: (context, index) {
            // ignore: avoid_unnecessary_containers
            return Container(
              child: Column(
                children: [
                  if (index == 0)
                    Container(
                      width: wdth,
                      height: hght / 12,
                      color: Colors.teal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.black),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ),
                          SizedBox(
                            width: wdth / 4,
                          ),
                          const Text(
                            "Found Items Feed",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Container(
                        width: wdth,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: wdth,
                              height: hght / 5,
                              decoration: const BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        //height: 10,
                                        ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: const [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black26,
                                                  radius: 15,
                                                  child: Icon(
                                                    IconData(
                                                      0xe098,
                                                      fontFamily:
                                                          'MaterialIcons',
                                                    ),
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 30),
                                                  child: Text(
                                                    "Lost Calculator",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 60),
                                                  child: Text(
                                                    "By Zain Javed",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: hght / 50,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "Found this calculator in Lab 2 SEECS.",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        //height: hght / 20,
                                        ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            /*Text(
                                              "Submit Request",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),*/
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 16.0, right: 8.0),
                                                child: Text(
                                                  "Message",
                                                  style: TextStyle(
                                                    color: Colors.lightBlue,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Show On Map",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: wdth,
                              height: hght / 3.5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/calculator.jpeg"),
                                  fit: BoxFit.cover, //change image fill type
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Container(
                        width: wdth,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: wdth,
                              height: hght / 5,
                              decoration: const BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        //height: 10,
                                        ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: const [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black26,
                                                  radius: 15,
                                                  child: Icon(
                                                    IconData(
                                                      0xe098,
                                                      fontFamily:
                                                          'MaterialIcons',
                                                    ),
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 30),
                                                  child: Text(
                                                    "Umbrella",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 60),
                                                  child: Text(
                                                    "Zain Javed",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: hght / 50,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "Blue umbrella found in C2. Owner contact me 03155586216",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        //height: hght / 20,
                                        ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            /*Text(
                                              "Submit Request",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),*/
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 16.0, right: 8.0),
                                                child: Text(
                                                  "Message",
                                                  style: TextStyle(
                                                    color: Colors.lightBlue,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Show On Map",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: wdth,
                              height: hght / 3.5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lastPhone.jpeg"),
                                  fit: BoxFit.cover, //change image fill type
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  /*
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Container(
                        width: wdth,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: wdth,
                              height: hght / 5,
                              decoration: const BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        //height: 10,
                                        ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: const [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.black26,
                                                  radius: 15,
                                                  child: Icon(
                                                    IconData(
                                                      0xe098,
                                                      fontFamily:
                                                          'MaterialIcons',
                                                    ),
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 30),
                                                  child: Text(
                                                    "Lost Watch",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: const [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 60),
                                                  child: Text(
                                                    "By Hamza Amjad",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: hght / 50,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "I lost a book named The Alchemist"
                                          "\n please help me find it",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                        //height: hght / 20,
                                        ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              "Submit Request",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 16.0, right: 8.0),
                                                child: Text(
                                                  "Message",
                                                  style: TextStyle(
                                                    color: Colors.lightBlue,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Show On Map",
                                              style: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 100,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: wdth,
                              height: hght / 3.5,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/AgVNuvi.png"),
                                  fit: BoxFit.cover, //change image fill type
                                ),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            );
          }),
    );
  }
}
