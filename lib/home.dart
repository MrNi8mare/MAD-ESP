import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// ignore: unused_import
import 'package:lossfound/Incoming_request.dart';
// ignore: unused_import
import 'package:lossfound/Request.dart';
import 'package:lossfound/Search.dart';
import 'package:lossfound/eventdetail.dart';
import 'package:lossfound/product.dart';
import 'package:lossfound/settings.dart';
import 'add_lostitem.dart';
// ignore: unused_import
import 'home_page.dart';
import 'massage.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

var wdth;
var hght;

class _homeState extends State<home> {
  List<Marker> _markers = [];
  List<eventdetail> _eventlist = [];
  //var _controller;
  initState() {
    addmarkers();
  }

  var currentFocus;

  unfocus() {
    currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  addmarkers() async {
    var data = await FirebaseFirestore.instance.collection("events").get();
    var doc = data.docs;
    print("jdjdjjdjjjjjjjjjjjjjjjj");
    for (int i = 0; i < doc.length; i++) {
      debugPrint(doc[i].data()['description']);

      _eventlist.add(new eventdetail(
          doc[i].data()['name'],
          doc[i].data()['description'],
          doc[i].data()['image'],
          doc[i].data()['latitude'],
          doc[i].data()['longitude']));
      _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          position: LatLng(double.parse(doc[i].data()['latitude']),
              double.parse(doc[i].data()['longitude'])),
          infoWindow: InfoWindow(title: doc[i].data()['name'], onTap: () {}),
          onTap: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.network(
                          doc[i].data()['image'],
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                        Text(doc[i].data()['name']),
                        Text(doc[i].data()['description']),
                        TextButton(
                          child: const Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    wdth = MediaQuery.of(context).size.width;
    hght = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(38.9647, 35.2233),
        ),
        mapType: MapType.normal,
        markers: Set<Marker>.of(_markers),
        onMapCreated: (GoogleMapController controller) {
          // _controller=controller;
          // _controller.complete(controller);
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('        Lost & Found System'),
      ),
      drawer: Container(
        width: wdth / 1.7,
        child: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("images/logo.png"),
                    )),
              ),

              ListTile(
                leading: Container(
                  child: Icon(Icons.add_box),
                  height: 30,
                  width: 30,
                ),
                title: Text('Lost/Found Item Feed'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return product();
                  }));
                },
              ),
              //ListTile(
              //  leading: Container(
              //    child: Icon(Icons.emoji_emotions_outlined),
              //    height: 30,
              //    width: 30,
              //  ),
              //  title: Text('Post Found Item'),
              //  onTap: () {
              //    Navigator.push(context, MaterialPageRoute(builder: (context) {
              //      return product();
              //    }));
              //  },
              //),
              ListTile(
                leading: Container(
                  child: Icon(Icons.search),
                  height: 30,
                  width: 30,
                ),
                title: Text('Search'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Search();
                  }));
                },
              ),
              //ListTile(
              //  leading:  Container(
              //    child: Icon(Icons.arrow_circle_up),
              //    height: 30,
              //    width: 30,
              //  ),
              //  title: Text('Outgoing Request'),
              //  onTap: () {
              //    Navigator.push(context, MaterialPageRoute(builder: (context){
              //      return Request();
              //
              //    })) ;
              //  },
              //),
              //ListTile(
              //  leading:  Container(
              //    child: Icon(Icons.arrow_circle_down),
              //    height: 30,
              //    width: 30,
              //  ),
              //  title: Text('Incoming Request'),
              //  onTap: () {
              //    Navigator.push(context, MaterialPageRoute(builder: (context){
              //      return IncomingRequest();
              //
              //    })) ;
              //  },
              //),
              ListTile(
                leading: Container(
                  child: Icon(Icons.message),
                  height: 30,
                  width: 30,
                ),
                title: Text('Message'),
                onTap: () {},
              ),
              ListTile(
                leading: Container(
                  child: Icon(Icons.settings),
                  height: 30,
                  width: 30,
                ),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return settings();
                  }));
                },
              ),

              ListTile(
                leading: Container(
                  child: Icon(Icons.man),
                  height: 30,
                  width: 30,
                ),
                title: Text('View Profile'),
                onTap: () {},
              ),

              ListTile(
                leading: Container(
                  child: Icon(Icons.logout),
                  height: 30,
                  width: 30,
                ),
                title: Text('Log Out'),
                onTap: () {
                  unfocus();
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => lostitem()));
        },
        label: const Text('Add'),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
