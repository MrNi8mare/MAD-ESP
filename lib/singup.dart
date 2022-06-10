import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'Firebasesevices.dart';
import 'login.dart';

class singup extends StatefulWidget {
  const singup({Key? key}) : super(key: key);

  @override
  _singupState createState() => _singupState();
}

var wdth;
var hght;

class _singupState extends State<singup> {
  var passwordcontroller = TextEditingController();
  var confirmpasswordcontroller = TextEditingController();
  var emaildcontroller = TextEditingController();
  var mobilecontroller = TextEditingController();
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
              height: hght,
              color: Colors.black26,
              child: Column(
                children: [
                  SizedBox(
                    height: hght / 6,
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
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                width: wdth,
                                height: 100,
                                child: Image.asset(
                                  "images/logo.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Email",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 30,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white30, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: emaildcontroller,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      hintText: 'Enter your Email'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Mobile Number",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 30,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white30,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: mobilecontroller,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 9),
                                    hintText: 'Enter Your Mobile Number',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Password",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 30,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white30, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: passwordcontroller,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      hintText: 'Enter Your Password'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Confirm Password",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                height: 30,
                                width: wdth / 1.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.white30, width: 2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TextField(
                                  controller: confirmpasswordcontroller,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      hintText: 'Enter Your confirm Password'),
                                ),
                              ),
                              SizedBox(
                                height: hght / 60,
                              ),
                              Container(
                                child: RaisedButton(
                                  onPressed: () async {
                                    EasyLoading.show();
                                    await Firebaseservices.emailauth(
                                        emaildcontroller.text.trim(),
                                        passwordcontroller.text.trim(),
                                        mobilecontroller.text.trim(),
                                        context);
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16.0),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already have Account? "),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const login(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
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
}
