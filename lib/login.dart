// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lossfound/Firebasesevices.dart';
import 'package:lossfound/singup.dart';

// ignore: unused_import
import 'home.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

var wdth;
var hght;

// ignore: camel_case_types
class _loginState extends State<login> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
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
                  // Container(
                  //   width: wdth,
                  //   height: hght/10,
                  //   color:Colors.teal,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text("lost&found",style:TextStyle(
                  //         color:Colors.white,
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold,
                  //         shadows: <Shadow>[
                  //           Shadow(
                  //             offset: Offset(5.0, 5.0),
                  //             blurRadius: 3.0,
                  //             color: Colors.black12,
                  //           ),
                  //           Shadow(
                  //             offset: Offset(5.0, 5.0),
                  //             blurRadius: 8.0,
                  //             color: Colors.black12,
                  //           ),
                  //         ],
                  //       ),)
                  //     ],
                  //   ),
                  // ),
                  /////
                  SizedBox(
                    height: hght / 4,
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
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: wdth,
                                child: ClipRRect(
                                  child: Image.asset(
                                    "images/logo.png",
                                    width: wdth,
                                    height: 100,
                                  ),
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
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  controller: emailcontroller,
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      border: InputBorder.none,
                                      hintText: 'Enter your Email'),
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  controller: passwordcontroller,
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      border: InputBorder.none,
                                      hintText: 'Enter Your Password'),
                                ),
                              ),
                              SizedBox(
                                height: hght / 60,
                              ),
                              // ignore: avoid_unnecessary_containers
                              Container(
                                child: RaisedButton(
                                  onPressed: () async {
                                    EasyLoading.show();
                                    await Firebaseservices.emaillogin(
                                        emailcontroller.text.trim(),
                                        passwordcontroller.text,
                                        context);
                                  },
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    'Log In',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16.0),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Don't have an Account? "),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const singup()));
                                    },
                                    child: const Text(
                                      "Sign up",
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
