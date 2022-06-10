import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lossfound/home.dart';
import 'package:lossfound/login.dart';
import 'package:path/path.dart';

class Firebaseservices{
  static Future<void> emailauth(email,password,phone,context) async {

    try {

      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );


    await insertuserinfirestore(email, password, phone, credential.user?.uid);
      EasyLoading.showSuccess("user created successfully !!");
      EasyLoading.dismiss();
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const login()), (route) => false);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {

        EasyLoading.showError("The Password is weak");
        EasyLoading.dismiss();
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        EasyLoading.showError("The account already exists for that email.");
        EasyLoading.dismiss();
        print('The account already exists for that email.');
      }
    } catch (e) {
      EasyLoading.showError(e.toString());
      EasyLoading.dismiss();
      print(e);
    }
  }
static emaillogin(email,password,context) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const home()), (route) => false);
     EasyLoading.dismiss();
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      EasyLoading.showError("No user found for that email.");
      EasyLoading.dismiss();
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      EasyLoading.showError("Wrong password provided for that user.");
      EasyLoading.dismiss();
      print('Wrong password provided for that user.');
    }
  }catch(e){
    EasyLoading.showError(e.toString());
    EasyLoading.dismiss();
  }
}
  static insertuserinfirestore(email,password,phone,userid) async {

   await FirebaseFirestore.instance.collection('users').doc(userid).set({
      "email":email,
      "password":password,
      "phone":phone,
    });

  }
  static Future<void> addevent(image,name,descripton,longitude,latitude) async {
    EasyLoading.show();
   await uploadImageToFirebase(image,name,descripton,longitude,latitude);

  }

  static  uploadImageToFirebase(image,name,description,longitude,latitude) async {
    String fileName = basename(image.path);
   try {
     var firebaseStorageRef =
     FirebaseStorage.instance.ref().child('events/$fileName');
     var uploadTask = firebaseStorageRef.putFile(image);
     var taskSnapshot = await uploadTask;
     taskSnapshot.ref.getDownloadURL().then((value) async {
       var collection = FirebaseFirestore.instance.collection("events");
       collection.add({
         "name": name,
         "description": description,
         "image": value,
         "longitude": longitude,
         "latitude": latitude,
       });
       EasyLoading.showSuccess("successfully !!");
       EasyLoading.dismiss();
     });
     EasyLoading.dismiss();
   }catch(e){
     EasyLoading.showSuccess("error");
     EasyLoading.dismiss();

   }
  }
}