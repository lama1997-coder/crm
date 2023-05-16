import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseDataResource {
  initializeFirebase(String path);
}

class FirebaseDataResourceImpl extends FirebaseDataResource {
  final Reference storageRef;

  FirebaseDataResourceImpl(this.storageRef);

  @override
  initializeFirebase(String path) {
    try {
      CollectionReference users = FirebaseFirestore.instance.collection(path);
      return users;

      // if (method == "post") {
      //
      //   return users
      //       .add(data)
      //       .then((value) => print("User Added"))
      //       .catchError((error) => print("Failed to add user: $error"));
      // }
      // if(method=="get"){
      //
      //
      //   users.where("");
      // }
    } on FirebaseException catch (e) {
      // Caught an exception from Firebase.
      log("Failed with error '${e.code}': ${e.message}");
    }
  }
}
