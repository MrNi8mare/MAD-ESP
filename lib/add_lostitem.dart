import 'dart:io';

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lossfound/Firebasesevices.dart';

import 'login.dart';

class lostitem extends StatefulWidget {
  const lostitem({Key? key}) : super(key: key);

  @override
  _singupState createState() => _singupState();
}

var wdth;
var hght;

class _singupState extends State<lostitem> {
  final ImagePicker _picker = ImagePicker();
  var namecontroller = TextEditingController();
  var descriptioncontroller = TextEditingController();
  var longitudecontroller = TextEditingController();
  var latitudecontroller = TextEditingController();

  var imagefile;

  initState() {
    getlocation();
  }

  getlocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied');
      } else if (permission == LocationPermission.deniedForever) {
        print("'Location permissions are permanently denied");
      } else {
        print("GPS Location service is granted");
      }
    } else {
      print("GPS Location permission granted.");
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    longitudecontroller.text = position.longitude.toString();
    latitudecontroller.text = position.latitude.toString();
    setState(() {});
  }

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
            return Container(
              child: Column(
                children: [
                  Container(
                    width: wdth,
                    height: hght / 10,
                    color: Colors.teal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Add Lost Item",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 3.0,
                                color: Colors.black12,
                              ),
                              Shadow(
                                offset: Offset(5.0, 5.0),
                                blurRadius: 8.0,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: hght / 20,
                  ),
                  Center(
                    child: Container(
                      width: wdth / 1.1,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Item Name",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white30, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: namecontroller,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Abc..'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Description",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white30, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: descriptioncontroller,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Add Discripition'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Add Image",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await Imagepickerchoicedialog(context);
                                },
                                child: Container(
                                  height: 50,
                                  width: wdth / 1.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.white30, width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.attach_file),
                                      Text(
                                        "Add Image",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: wdth / 2.5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white30, width: 2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      controller: longitudecontroller,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Longitude'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: wdth / 16,
                                  ),
                                  Container(
                                    width: wdth / 2.5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.white30, width: 2),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      controller: latitudecontroller,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Latitude'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: hght / 60,
                              ),
                              Container(
                                child: RaisedButton(
                                  onPressed: () async {
                                    await getlocation();
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'Get Location',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: hght / 60,
                              ),
                              Container(
                                child: RaisedButton(
                                  onPressed: () async {
                                    await Firebaseservices.addevent(
                                        imagefile,
                                        namecontroller.text,
                                        descriptioncontroller.text,
                                        longitudecontroller.text,
                                        latitudecontroller.text);
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  Imagepickerchoicedialog(context) {
    return showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            child: Row(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    child: GestureDetector(
                        onTap: () async {
                          var photo;

                          photo = await _picker.pickImage(
                              source: ImageSource.gallery);

                          if (photo != null) {
                            imagefile = File(photo.path);
                            setState(() {});
                          }
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "images/gallery.png",
                        ))),
                Container(
                    width: 60,
                    height: 55,
                    child: GestureDetector(
                        onTap: () async {
                          var photo;

                          photo = await _picker.pickImage(
                              source: ImageSource.camera);

                          if (photo != null) {
                            imagefile = File(photo.path);
                            setState(() {});
                          }
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "images/camera.jpg",
                        ))),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }
}
